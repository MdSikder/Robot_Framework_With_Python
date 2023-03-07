*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://opensource-demo.orangehrmlive.com/  chrome


*** Test Cases ***
screenShot Test
    open browser    ${url}  ${browser}
    maximize browser window
    sleep    2
    input text    id:txtUsername Admin
    input text    id:txtPassword    admin123
    sleep    2

#    element capture
    capture element screenshot    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[1]/img     C:/Users/KloverCloud/PycharmProjects/Robot_Framework_With_Python/Basic/screenshotCapture/logo.png
    capture page screenshot        C:/Users/KloverCloud/PycharmProjects/Robot_Framework_With_Python/Basic/screenshotCapture/login_page.png
*** Keywords ***
