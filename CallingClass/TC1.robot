*** Settings ***
Documentation    'call Method' Keyword deomo program
Variables     test.py

*** Test Cases ***
basic test
    ${result}=  call method    ${cal}   addition    20  40
    log to console    ${result}
    should be equal as numbers    ${result}     60



