*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/
*** Test Cases ***
LoginTest
    open browser    ${url}    ${browser}
    maximize browser window
    loginToApplication
    sleep    2s



*** Keywords ***
loginToApplication
    click link      xpath://a[contains(text(),'Log in')]
    sleep    3s
    input text      xpath://input[@id='Email']  test
    input text      xpath://input[@id='Password']   test
    sleep    2s
    click element   xpath://button[contains(text(),'Log in')]
    sleep    5s
    close browser
