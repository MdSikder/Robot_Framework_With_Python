*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://seleniumhq.github.io/selenium/docs/api/java/index/   chrome


*** Test Cases ***
Timeout Test
    open browser    ${url}  ${browser}
    maximize browser window
    sleep    3

    select frame     pakageListFrame    #id name xpath
    click link     org.openga.seleum
    unselect frame

    select frame     pakageListFrame2    #id name xpath
    click link     org.openga.seleum
    unselect frame

    close browser

*** Keywords ***
