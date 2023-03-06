*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register


*** Test Cases ***
Timeout Test
    open browser    ${url}  ${browser}
    maximize browser window
    ${time} =   get selenium timeout
    log to console    ${time}

    set selenium timeout    10 seconds
    wait until page contains    Registera    # it is wait 5s defaultly

    select radio button    Gender   M
    input text    name:FirstName    David
    input text    name:LastName     John
    input text    name:Email         test@gmail.com
    input text    name:Password     davidjohn
    input text    name:ConfirmPassword  davidjohn

    close browser

*** Keywords ***
