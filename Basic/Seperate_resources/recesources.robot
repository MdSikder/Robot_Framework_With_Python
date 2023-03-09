*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
launchBrowser
    [Arguments]    ${appurl}   ${appbrowser}
    open browser    ${appurl}   ${appbrowser}
    maximize browser window
    sleep    2
    ${title}=   get title
    [Return]    ${title}