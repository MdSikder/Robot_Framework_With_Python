*** Settings ***
Library            SikuliLibrary     mode=NEW
Suite Setup     Init Sikuli Lib
Suite Teardown  Stop Sikuli Lib



*** Test Cases ***
Test Application actions
    Click   windows_icon.png


*** Keywords ***
Init Sikuli Lib
    Add Image Path         ${EXECDIR}\\DesktopAppAutomation\\img
    Start Sikuli Process
#    SikuliLibrary.Add Image Path        ${_path}

Stop Sikuli Lib
   Capture Screen