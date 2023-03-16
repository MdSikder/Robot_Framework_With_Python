*** Settings ***
Library         RequestsLibrary
Library         Collections

*** Variables ***

${base_url}  =   http://restapi.deemoqa.com
${city}     Delhi

*** Test Cases ***
Get_weatherInfo
    create session   myssion       ${base_url}
    ${response}=    GET On Session    request    myssion      /utilities/weather/city/${city}

#    log to console    ${response.status_code}
#    log to console    ${response.content}
#    log to console    ${response.headers}

      #validation part
      ${status_code}=   convert to string    ${response.status_code}
      should be equal    $${status_code}    200

       ${body}=     ${response.content}
       should contain    ${body}    Delhi

       ${conentTypeValue}=  get from dictionary    ${response.headers}      Content-Type
       should be equal    ${contentTypeValue}     application/json