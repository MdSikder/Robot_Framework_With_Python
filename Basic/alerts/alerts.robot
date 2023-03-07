*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/   chrome


*** Test Cases ***
Timeout Test
    open browser    ${url}  ${browser}
    maximize browser window
    sleep    3
    click element    xpath://*[@id="HTML9"]/div[1]/button   # opens alert should be present
    sleep    3

    alert should be present     Press a button!
    alert should not be present    Press a button!




    close browser

*** Keywords ***
