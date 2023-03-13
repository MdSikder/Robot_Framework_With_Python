*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/loginKeywords.robot


*** Variables ***

${Browser}      chrome
${SiteUrl}      https://demo.guru99.com/test/newtours/
${user}          tutorial
${pwd}          tutorial


*** Test Cases ***
LoginTest
    open the Browser     ${SiteUrl}  ${Browser}
    sleep    3
    Enter UserName    ${user}
    sleep    1
    Enter Password      ${pwd}
    sleep    1
    Click SignIn
    sleep    3
    Verify Successful login
    close my browser
