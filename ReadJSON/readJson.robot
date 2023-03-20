*** Settings ***
Library    JSONLibrary
Library    os
Library    Collections


*** Variables ***
${values} =  load json from file    C:\Users\KloverCloud\PycharmProjects\Robot_Framework_With_Python\ReadJSON\json\sample1.json
*** Test Cases ***
TestCase1:

    ${name_value} =    get value from json    ${values}    $.lastName
    log to console    ${name_value}
#    should be equal    ${name_value}     John