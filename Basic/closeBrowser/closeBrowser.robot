*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register


*** Test Cases ***
Timeout Test
    open browser    ${url}  ${browser}
    maximize browser window

    open browser    https://www.google.com/  ${browser}
    maximize browser window

close all browsers
*** Keywords ***
