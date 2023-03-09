*** Settings ***
Library    SeleniumLibrary
Resource    ../Seperate_resources/recesources.robot
*** Variables ***
${browser}  chrome
${url}  https://demo.guru99.com/test/newtours/
*** Test Cases ***
Tab Handle Test

    ${PageTitle}=   launchBrowser   ${url}  ${browser}
    log to console  **********The page title is ${PageTitle}*************
    log    ${PageTitle}
    input text    name:userName     mercury
    input text    name:password     mercury

    sleep    3
    close browser
