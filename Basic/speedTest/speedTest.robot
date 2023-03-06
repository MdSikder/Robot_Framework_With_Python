*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register


*** Test Cases ***
speed Test
#   to print default time
    ${speed}=   get selenium speed
    log to console    ${speed}
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed    1
    select radio button    Gender   M
    input text    name:FirstName    David
    input text    name:LastName     John
    input text    name:Email         test@gmail.com
    input text    name:Password     davidjohn
    input text    name:ConfirmPassword  davidjohn

    ${speed}=   get selenium speed
    log to console    ${speed}
    close browser

*** Keywords ***
