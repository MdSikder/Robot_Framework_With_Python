*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register


*** Test Cases ***
Timeout Test
    open browser    ${url}  ${browser}
    maximize browser window

    ${ImplicitTime}=    get selenium implicit wait
    log to console   ${ImplicitTime}

    set selenium implicit wait    10 seconds

    ${ImplicitTime}=    get selenium implicit wait
    log to console   ${ImplicitTime}

    select radio button    Gender   M
    input text    name:FirstName    David
    input text    name:LastName     John
    input text    name:Email1         test@gmail.com
    input text    name:Password     davidjohn
    input text    name:ConfirmPassword  davidjohn

    close browser

*** Keywords ***
