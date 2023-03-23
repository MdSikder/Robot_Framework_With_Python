*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${UploadFiletest}           xpath=//input[@type='file']
${AddFile}          C:\\Users\\KloverCloud\\Desktop\\file\\fil.png
*** Test Cases ***
Test for Upload
    Open Browser      https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm    Chrome
    maximize browser window
    sleep    10
    Upload file
*** Keywords ***
Upload file
    Wait Until Page Contains Element   ${UploadFiletest}   60s
    scroll element into view    ${UploadFiletest}
    sleep    3
    Scroll Element Into View     ${UploadFiletest}
    Choose File     ${UploadFiletest}     ${AddFile}
    sleep    3