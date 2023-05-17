import json


def json_property_set_and_equal(json1, json2, property_list):
    j1 = json1
    j2 = json2
    res = True
    i = 0

    while res and i < len(property_list):
        j1 = j1.get(property_list[i])
        j2 = j2.get(property_list[i])
        if (j1 is None and j2 is not None) or (j2 is None and j1 is not None):
            res = False
        i = i + 1

    if res and j1 != j2:
        res = False
    return res


class JSONCloudMsg(object):
    def waveform_messages_are_equal(self, msg1, msg2):
        res = True
        json1 = json.loads(msg1)
        json2 = json.loads(msg2)

        res = res and json_property_set_and_equal(json1, json2, ["payload", "metadata", "breathNumber"])
        res = res and json_property_set_and_equal(json1, json2, ["payload", "data", "typeOfData"])
        res = res and json_property_set_and_equal(json1, json2,
                                                  ["payload", "data", "ventilatorStatus", "mandatoryInspiration"])
        res = res and json_property_set_and_equal(json1, json2,
                                                  ["payload", "data", "ventilatorStatus", "spontInspiration"])
        res = res and json_property_set_and_equal(json1, json2,
                                                  ["payload", "data", "ventilatorStatus", "patientTrigger"])
        res = res and json_property_set_and_equal(json1, json2, ["payload", "data", "ventilatorStatus", "exhalation"])

        for i in range(5):
            res = res and json_property_set_and_equal(json1["payload"]["data"]["samples"][i],
                                                      json2["payload"]["data"]["samples"][i], ["timeResolution"])
            res = res and json_property_set_and_equal(json1["payload"]["data"]["samples"][i],
                                                      json2["payload"]["data"]["samples"][i],
                                                      ["waveFormSequenceNumber"])
            res = res and json_property_set_and_equal(json1["payload"]["data"]["samples"][i],
                                                      json2["payload"]["data"]["samples"][i], ["pPatient"])
            res = res and json_property_set_and_equal(json1["payload"]["data"]["samples"][i],
                                                      json2["payload"]["data"]["samples"][i], ["pOptional"])
            res = res and json_property_set_and_equal(json1["payload"]["data"]["samples"][i],
                                                      json2["payload"]["data"]["samples"][i], ["flow"])
            res = res and json_property_set_and_equal(json1["payload"]["data"]["samples"][i],
                                                      json2["payload"]["data"]["samples"][i], ["volume"])
            res = res and json_property_set_and_equal(json1["payload"]["data"]["samples"][i],
                                                      json2["payload"]["data"]["samples"][i], ["pco2"])
            res = res and json_property_set_and_equal(json1["payload"]["data"]["samples"][i],
                                                      json2["payload"]["data"]["samples"][i], ["fco2"])
            res = res and json_property_set_and_equal(json1["payload"]["data"]["samples"][i],
                                                      json2["payload"]["data"]["samples"][i], ["plethysogram1"])
            res = res and json_property_set_and_equal(json1["payload"]["data"]["samples"][i],
                                                      json2["payload"]["data"]["samples"][i], ["plethysogram2"])
        return res
