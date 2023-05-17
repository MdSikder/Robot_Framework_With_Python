*** Settings ***


Documentation       Gateway Integration tests with one ventilator
Library    ZMQLibrary
Library             ZMQLibrary
Library             ${EXECDIR}project_test/IntegrationTester/library/MockVentilator.py
Library             ${EXECDIR}project_test/IntegrationTester/library/MockCloudSender.py
Library             ${EXECDIR}project_test/IntegrationTester/library/JSONCloudMsg.py
Variables           ${EXECDIR}project_test/IntegrationTester/test_data/dummy_messages.py


*** Test Cases ***
Send dummy messages
    cloud sender connects                           localhost               8739
    ventilator connects     localhost               8738
    sleep                   100ms                   Wait for the ZMQ IPC file to be initialized
    ventilator sends        ${dummy_block_waveform}
    ${recvd}                cloud sender receives                           3000
    ${res}                  waveform messages are equal                     ${recvd}                ${dummy_cloud_waveform}
    should be true          ${res}
