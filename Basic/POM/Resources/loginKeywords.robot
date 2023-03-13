*** Settings ***
Library     SeleniumLibrary
Variables    ../PageObject/locators.py

*** Keywords ***
open the Browser
    [Arguments]    ${SiteUrl}      ${Browser}
    open browser    ${SiteUrl}      ${Browser}
    maximize browser window
Enter UserName
    [Arguments]    ${username}
    input text          ${txt_LoginUserName}        ${username}

Enter Password
    [Arguments]    ${password}
    input text          ${txt_LoginPassword}        ${password}

Click SignIn
    click button    ${btn_signIn}

Verify Successful login
    title should be    Login: Mercury Tours

close my browser
    close all browsers