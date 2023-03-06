*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.guru99.com/test/newtours/register.php


*** Test Cases ***
Handling DropDowns
    open browser    ${url}  ${browser}
    maximize browser window
    sleep    2
    execute javascript  window.scrollTo(0,200)
    sleep    5

#     need id & name of the dropdown

    select from list by label   xpath://tbody/tr[11]/td[2]/select[1]    ALGERIA
    sleep    5

    close browser

*** Keywords ***
