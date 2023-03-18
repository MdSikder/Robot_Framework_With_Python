*** Settings ***
Documentation    Robot Framework Demo
Library    Collections
Library     String
Library    JSONLibrary
Library    RequestsLibrary

*** Variables ***
${base_url}=    https://restful-booker.herokuapp.com
${page_path}    $.page

*** Test Cases ***
Put_CustomerRegistration

    [Tags]    Demo
    create session    session1      ${base_url}     disable_warnings=1
    ${endpoint}     set variable    /booking/
    ${response}=    Get on session    session1      ${endpoint}

    log to console    ${response.headers}
    log to console    ${response.status_code}
    log to console    ${response.content}
    log               ${response.content}


    #validations
    ${status_code}=     convert to string    ${response.status_code}
    should be equal    ${status_code}   200
#    log to console    ${status_code}

    ${json_response}=   convert string to json      ${response.content}
#    log to console    ********${json_response}*************

    ${contents}=        get value from json    ${json_response}      ${page_path}
    ${contents}=        convert to string    ${contents}
    ${contents}=        remove string using regexp      ${contents}     ['\\[\\],]
#    should be equal    ${contents}  2

    ${headerValue}=     get from dictionary    ${response.headers}      Content-type
    log to console    ${headerValue}
