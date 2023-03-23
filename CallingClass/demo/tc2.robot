*** Settings ***
Documentation    'call Method' Keyword deomo program
Variables     test2.py

*** Test Cases ***
basic test
    ${result}=  call method    ${cel}   addition    20  40
    log to console    ${result}
    should be equal as numbers    ${result}     60



    ${is_contains_apple}=   call method    ${cel}   kwargs_demo     orange mango Apple kiwi