*** Settings ***
Library     SeleniumLibrary
Library    DataDriver   ../TestData/loginData.csv
Resource  ../script/login_resources.robot


Suite Setup     Open my Browser
Suite Teardown      Close Browsers
Test Template       Invalid login

*** Test Cases ***
LoginTestwithExcel  using  ${username}  and   ${password}

*** Keywords ***
Invalid login
    [Arguments]    ${username}      ${password}
    Input Username     ${username}
    Input pwd       ${password}
    click login button
    Error message should be visible