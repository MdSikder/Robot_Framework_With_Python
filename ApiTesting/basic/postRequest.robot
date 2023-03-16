*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}=    http://restapi.demoqa.com/customer/register


*** Test Cases ***
Put_CustomerRegistration
    create session    mysession     ${base_url}
    ${body}=    create dictionary       FirstName : david1234     LastName : "david1234",    "UserName" : "david1234",    "Password": "david1234",    "Email"   : "david1234@gmail.com"
    ${header}=  create dictionary      Content-Type=application/json
    ${response}=    post request    mysession  /booking/    data=${body}    headers=${header}

    log to console    ${response.status_code}
    log to console    ${response.content}

    #validations
    ${sta_code}=    convert to string    ${response.status_code}
    should be equal    ${sta_code}  201



    ${res_body}=    convert to string    ${response.content}
    should contain    ${res_body}   OPERATION_SUCESS
    should contain    ${res_body}   operation completed successfully

