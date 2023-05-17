import crcmod

STX = 0x02
ETX = 0x03
VT = 0x0B
CR = 0x0D
MIXED_MODE1 = 0x31
WAVES_OFF = 0x30
WAVES_ON = 0x31
ACKNOWLEDGMENT = 0x35

IDENTIFICATION_GROUP = 0x40
SW_VERSION_GROUP = 0x41
MONITORED_PARAMS_GROUP = 0x50
CONTROL_SETTINGS_GROUP = 0x70


class BlockProtocol(object):
    def compute_crc(self, data):
        crc = crcmod.Crc(2**8 + 0xD5, rev=False, initCrc=0)
        crc.update(data)
        return crc.hexdigest()

    def mixed_mode1_msg_requests_group(self, msg, group_id, info):
        n = len(msg)
        i = 3
        res = False
        while i < n and not res:
            if msg[i] == group_id:
                res = True
                if info[0] not in ["timed_only", "once", "breath_by_breath", "on_change"]:
                    res = False
                if info[0] == "timed_only" and msg[i+1] != 0x30:
                    res = False
                if info[0] == "once" and msg[i+1] != 0x31:
                    res = False
                if info[0] == "breath_by_breath" and msg[i+1] != 0x32:
                    res = False
                if info[0] == "on_change" and msg[i+1] != 0x33:
                    res = False
            i = i + 5
        return res

    def msg_is_mixed_mode1(self, msg, waveform=False,
                           identification_group=None,
                           sw_version_group=None,
                           monitored_params_group=None,
                           control_settings_group=None):
        res = False
        n = 0
        if (msg is not None):
            n = len(msg)
        if n >= 7:
            res = True
            if msg[0] != STX:
                res = False
            if msg[1] != MIXED_MODE1:
                res = False
            if msg[n-4] != ETX:
                res = False
            if msg[n-1] != CR:
                res = False
            if waveform and msg[2] != WAVES_ON:
                res = False
        if res and identification_group is not None:
            res = self.mixed_mode1_msg_requests_group(msg,
                                                      IDENTIFICATION_GROUP,
                                                      identification_group)
        if res and sw_version_group is not None:
            res = self.mixed_mode1_msg_requests_group(msg,
                                                      SW_VERSION_GROUP,
                                                      sw_version_group)
        if res and monitored_params_group is not None:
            res = self.mixed_mode1_msg_requests_group(msg,
                                                      MONITORED_PARAMS_GROUP,
                                                      monitored_params_group)
        if res and control_settings_group is not None:
            res = self.mixed_mode1_msg_requests_group(msg,
                                                      CONTROL_SETTINGS_GROUP,
                                                      control_settings_group)
        return res
