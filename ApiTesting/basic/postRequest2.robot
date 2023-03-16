*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}=    https://restful-booker.herokuapp.com


*** Test Cases ***
Put_CustomerRegistration
    create session    mysession     ${base_url}
    ${body}=    create dictionary       firstname : Jim    lastname : Brown   totalprice : 111     depositpaid : true    bookingdates  : checkin : 2018-01-01,  checkout  2019-01-01    additionalneeds : Breakfast


    ${header}=  create dictionary      Content-Type=application/json
    ${response}=    POST request    mysession  /booking/    data=${body}    headers=${header}

    log to console    ${response.status_code}
    log to console    ${response.content}

    #validations
    ${sta_code}=    convert to string    ${response.status_code}
    should be equal    ${sta_code}  200



    ${res_body}=    convert to string    ${response.content}
    should contain    ${res_body}   OPERATION_SUCESS
    should contain    ${res_body}   operation completed successfully

