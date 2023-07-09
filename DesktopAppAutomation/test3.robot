*** Settings ***
Documentation   Sikuli with Robot Framework
Library            SikuliLibrary     mode=NEW
Library            SeleniumLibrary
Suite Setup        Start Sikuli Process
Suite Teardown     Stop Remote Server

*** Variable ***
${OPEN_APP}  C:/Windows/write.exe


*** Test Cases ***
Test Application Open
    Open Application    ${OPEN_APP}
    Press Special Key	TAB



