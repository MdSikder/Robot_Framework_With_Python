*** Settings ***
Documentation       Testing for the signalling communication between the gateway and the ventilator(s)


Library             ${EXECDIR}project_test//IntegrationTester//library/MockCloudSender.py
Library             ${EXECDIR}project_test/IntegrationTester/library/BlockProtocol.py

*** Variables ***
@{timed_only}             timed_only  1
@{breath_by_breath}             breath_by_breath  0
&{msg_options}               waveform=True           identification_group=${timed_only}              sw_version_group=${timed_only}                  monitored_params_group=${breath_by_breath}      control_settings_group=${timed_only}

*** Test Cases ***
Receive periodic data requests for waveform data and groups
    ventilator connects     localhost               8738
    sleep                   100ms                   Wait for the ZMQ IPC file to be initialized

    ${recvd}                ventilator receives     100
    ${res}                  msg is mixed mode1      ${recvd}                &{msg_options}
    should be true          ${res}

    ${recvd}                ventilator receives     1000
    ${res}                  msg is mixed mode1      ${recvd}                &{msg_options}
    should be true          ${res}

    ${recvd}                ventilator receives     1000
    ${res}                  msg is mixed mode1      ${recvd}                &{msg_options}
    should be true          ${res}
