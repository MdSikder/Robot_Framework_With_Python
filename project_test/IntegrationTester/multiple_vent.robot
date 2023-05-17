*** Settings ***
Documentation       Gateway Integration tests with 100 ventilator connections for scalability

Library             ${EXECDIR}/library/TCPStream.py
Library             ${EXECDIR}/library/MockCloudSender.py    
Library             ${EXECDIR}/library/JSONCloudMsg.py
Library             Collections
Variables           ${EXECDIR}/test_data/dummy_messages.py

*** Test Cases ***
Send messages from multiple ventilators
    ${ventilator_connections}=    Create List
    FOR    ${i}    IN RANGE    100
        ${connection}=    connect    localhost    8738
        Append To List    ${ventilator_connections}    ${connection}
    END

    sleep    100ms    Wait for the ZMQ IPC file to be initialized

    ${encoded_dummy_block_waveform}=    Set Variable    ${dummy_block_waveform.encode('utf-8')}  # Encode the message here
    FOR    ${i}    IN RANGE    100
        send    ${ventilator_connections}[${i}]    ${encoded_dummy_block_waveform}  # Pass the encoded message
    END

    FOR    ${i}    IN RANGE    100
        ${recvd}=    receive string from zmq    3000
        Log    Received string: ${recvd}  # Add this line for debugging
        ${res}=    waveform messages are equal    ${recvd}    ${dummy_cloud_waveform}
        should be true    ${res}
    END
