*** Settings ***
Library           SikuliLibrary
Library    SeleniumLibrary
Documentation     Sikuli Library Demo
#Test Setup        Add Needed Image Path
#Test Teardown     Stop Remote Server


*** Variables ***
${IMAGE_DIR}      ${CURDIR}\\img

*** Test Cases ***
Windows Notpad Hellow World
    Open Windows Start Menu
    Open Notepad
#    Input In Notepad
#    Quit Without Save

*** Keywords ***
Add Needed Image Path
    Add Needed Image Path   ${IMAGE_DIR}
#    Add Image Path    ${IMAGE_DIR}

Open Windows Start Menu

    click image    windows_start_menu.png

Open Notepad
    Input Text    search_input.png    notepad
#    Click    notepad.png
#    Double Click    notepad_title.png
#
#Input In Notepad
#    Input Text    notepad_workspace.png    Hello World
#    Text Should Exist    Hello World
#
#Quit Without Save
#    Click    close.png
#    Click    dont_save.png
