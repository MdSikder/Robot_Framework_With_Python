*** Settings ***
Documentation   Sikuli with Robot Framework
Library            SikuliLibrary     mode=NEW
Library            SeleniumLibrary
Suite Setup        Run Keywords Start    Sikuli Process AND     Read All Images
Suite Teardown     Stop Remote Server

*** Variable ***
${IMAGE_DIR}      test_images.sikuli
${OPEN_APP}  C:/Windows/write.exe
${blod}     bb.png
${cancle}   cross.png


*** Test Cases ***
Test Application Open
    Open Application    ${OPEN_APP}
    Press Special Key	TAB

Open Windows Start Menu
    Click    windows_icon.png

*** Keywords ***
Read All Images
    Add Image Path      ${IMAGE_DIR}
#    Add Needed Image Path   ${IMAGE_DIR}