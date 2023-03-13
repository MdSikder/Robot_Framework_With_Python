*** Settings ***
Library     SeleniumLibrary



*** Variables ***
${url}=     https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${browser}=     chrome

*** Keywords ***
Open my Browser
    open browser    ${url}      ${browser}
    maximize browser window
    sleep    2

Close Browsers
    close all browsers

Open Login Page
    go to   ${url}

Input Username
    [Arguments]    ${username}
    input text    id:Email      ${username}
    sleep    2

Input pwd
    [Arguments]    ${password}
    input text    id:Password      ${password}
    sleep    2

Click LogIn Button
    click element    xpath://button[contains(text(),'Log in')]

Click Logout
    click link    Logout
    sleep    3


Error message should be visible
    page should contain    Login was unsuccessful

Dashboard page should be visible
    page should contain    Dashbord