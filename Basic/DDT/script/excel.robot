*** Settings ***
Library     SeleniumLibrary
Library    DataDriver   ../TestData/logindata.xlsx  sheet_name=Sheet1
Resource  ../script/login_resources.robot


Suite Setup     Open my Browser
Suite Teardown      Close Browsers
Test Template       Invalid login

*** Test Cases ***
LoginTestwithExcel    ${username}    ${password}

*** Keywords ***
Invalid login
    [Arguments]    ${username}      ${password}
    Input Username     ${username}
    Input pwd       ${password}
    click login button
    #Validation
    Error message should be visible