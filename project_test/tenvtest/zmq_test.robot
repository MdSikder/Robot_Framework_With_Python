*** Settings ***
Library           zmq_library.py

*** Test Cases ***
Send and receive messages using ZeroMQ
    Connect    tcp://localhost:5555
    ${response}    Send Message    Hello, World!
    Should Be Equal As Strings    ${response}    Hi there!
    Close
