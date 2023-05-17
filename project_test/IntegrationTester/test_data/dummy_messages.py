dummy_block_waveform = bytes([
    0x02,  # STX
    0x31,  # Mixed Mode 1
    0x30, 0x31,  # block number "1"
    0x30, 0x30, 0x34, 0x32,  # breath number "42
    0x32, 0x30,  # sampling rate (20 ms)
    ## sample 1
    0xA5, # mandatory inspiration=true, spont inspiration=false, patient trigger=true, exhalation = false, volume high resolution=true, flow high resolution=false
    0x00, 0x00,  # p-Patient       (-819.2)
    0x00, 0x40,  # q-Patient       (0.0)
    0x00, 0x10,  # flow            (-6144)
    0x70, 0x40,  # volume          (11.2)
    0x00, 0x60,  # PCO2            (409.6)
    0x00, 0x60,  # FCO2            (40.96)
    0xFF, 0xFF,  # Plethysmogram 1 (8191)
    0x7E, 0x7F,  # Plethysmogram 2 (8190)
    ## sample 2
    0xA5, # mandatory inspiration=true, spont inspiration=false, patient trigger=true, exhalation = false, volume high resolution=true, flow high resolution=false
    0x00, 0x00,  # p-Patient       (-819.2)
    0x00, 0x40,  # q-Patient       (0.0)
    0x00, 0x10,  # flow            (-6144)
    0x70, 0x40,  # volume          (11.2)
    0x00, 0x60,  # PCO2            (409.6)
    0x00, 0x60,  # FCO2            (40.96)
    0xFF, 0xFF,  # Plethysmogram 1 (8191)
    0x7E, 0x7F,  # Plethysmogram 2 (8190)
    ## sample 3
    0xA5, # mandatory inspiration=true, spont inspiration=false, patient trigger=true, exhalation = false, volume high resolution=true, flow high resolution=false
    0x00, 0x00,  # p-Patient       (-819.2)
    0x00, 0x40,  # q-Patient       (0.0)
    0x00, 0x10,  # flow            (-6144)
    0x70, 0x40,  # volume          (11.2)
    0x00, 0x60,  # PCO2            (409.6)
    0x00, 0x60,  # FCO2            (40.96)
    0xFF, 0xFF,  # Plethysmogram 1 (8191)
    0x7E, 0x7F,  # Plethysmogram 2 (8190)
    ## sample 4
    0xA5, # mandatory inspiration=true, spont inspiration=false, patient trigger=true, exhalation = false, volume high resolution=true, flow high resolution=false
    0x00, 0x00,  # p-Patient       (-819.2)
    0x00, 0x40,  # q-Patient       (0.0)
    0x00, 0x10,  # flow            (-6144)
    0x70, 0x40,  # volume          (11.2)
    0x00, 0x60,  # PCO2            (409.6)
    0x00, 0x60,  # FCO2            (40.96)
    0xFF, 0xFF,  # Plethysmogram 1 (8191)
    0x7E, 0x7F,  # Plethysmogram 2 (8190)
    ## sample 5
    0xA5, # mandatory inspiration=true, spont inspiration=false, patient trigger=true, exhalation = false, volume high resolution=true, flow high resolution=false
    0x00, 0x00,  # p-Patient       (-819.2)
    0x00, 0x40,  # q-Patient       (0.0)
    0x00, 0x10,  # flow            (-6144)
    0x70, 0x40,  # volume          (11.2)
    0x00, 0x60,  # PCO2            (409.6)
    0x00, 0x60,  # FCO2            (40.96)
    0xFF, 0xFF,  # Plethysmogram 1 (8191)
    0x7E, 0x7F,  # Plethysmogram 2 (8190)
    0x0B,  # VT, end of waves
    0x03,  # ETX, end of data
    0x38, 0x44,  #  CRC
    0x0D   # CR, end of message
    ])

dummy_cloud_waveform = '''
    {
        "payload":{
            "metadata":{
                "timestamp":42,
                "gatewayGuid":"gw",
                "dataForwarderId":"127.0.0.1",
                "breathNumber":42
                },
            "data":{
                "typeOfData":"waveForms",
                "ventilatorStatus":{
                    "mandatoryInspiration":true,
                    "spontInspiration":false,
                    "patientTrigger":true,
                    "exhalation":false
                },
                "samples":[
                    {
                    "timestamp":42,
                    "timeResolution":20,
                    "waveFormSequenceNumber":5,
                    "pPatient":-819.2,
                    "pOptional":0.0,
                    "flow":-6144,
                    "volume":11.2,
                    "pco2":409.6,
                    "fco2":40.96,
                    "plethysmogram1":null,
                    "plethysmogram2":8190
                    },
                    {
                    "timestamp":42,
                    "timeResolution":20,
                    "waveFormSequenceNumber":6,
                    "pPatient":-819.2,
                    "pOptional":0.0,
                    "flow":-6144,
                    "volume":11.2,
                    "pco2":409.6,
                    "fco2":40.96,
                    "plethysmogram1":null,
                    "plethysmogram2":8190
                    },
                    {
                    "timestamp":42,
                    "timeResolution":20,
                    "waveFormSequenceNumber":7,
                    "pPatient":-819.2,
                    "pOptional":0.0,
                    "flow":-6144,
                    "volume":11.2,
                    "pco2":409.6,
                    "fco2":40.96,
                    "plethysmogram1":null,
                    "plethysmogram2":8190
                    },
                    {
                    "timestamp":42,
                    "timeResolution":20,
                    "waveFormSequenceNumber":8,
                    "pPatient":-819.2,
                    "pOptional":0.0,
                    "flow":-6144,
                    "volume":11.2,
                    "pco2":409.6,
                    "fco2":40.96,
                    "plethysmogram1":null,
                    "plethysmogram2":8190
                    },
                    {
                    "timestamp":42,
                    "timeResolution":20,
                    "waveFormSequenceNumber":9,
                    "pPatient":-819.2,
                    "pOptional":0.0,
                    "flow":-6144,
                    "volume":11.2,
                    "pco2":409.6,
                    "fco2":40.96,
                    "plethysmogram1":null,
                    "plethysmogram2":8190
                    }
                ]
            }
        },
        "payloadSignature":"my_signature"
    }
    '''
