*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.automationtesting.in/Windows.html   chrome


*** Test Cases ***
Tab Handle Test
    open browser    ${url}  ${browser}
    maximize browser window
    sleep    2
    click element    xpath://*[@id="Tabbed"]/a/button
    switch window    title=Selenium
    click element    xpath://*[@id="main_navbar"]/ul/li[7]/a/span
    sleep    2
    close browser

*** Keywords ***
