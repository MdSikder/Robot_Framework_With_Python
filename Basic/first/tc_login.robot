*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/
${login_button}  xpath://a[contains(text(),'Log in')]
${username_box}  xpath://input[@id='Email']
${password_box}  xpath://input[@id='Password']
${submit_button}  xpath://button[contains(text(),'Log in')]


*** Test Cases ***
LoginTest
    open browser    ${url}    ${browser}
    maximize browser window
    loginToApplication
    sleep    2s



*** Keywords ***
loginToApplication
    click link      ${login_button}
    sleep    3s
    input text      ${username_box}  test
    input text      ${password_box}   test
    sleep    2s
    click element   ${submit_button}
    sleep    5s
    close browser
