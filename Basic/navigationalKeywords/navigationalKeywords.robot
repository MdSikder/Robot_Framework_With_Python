*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.google.com/ chrome


*** Test Cases ***
Tab Handle Test
    open browser    ${url}  ${browser}
    maximize browser window
    ${loc}=     get location
    log to console    the location is ${loc}
    sleep    3

    go to    https://www.bing.com/
    ${loc}=     get location
    log to console    the location is ${loc}
    sleep    3

    go back
    ${loc}=     get location
    log to console    the location is ${loc}
    sleep    2

    close browser
*** Keywords ***
