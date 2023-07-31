*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Tab Handle Test
    open browser    http://www.google.com    Chrome     C:\Users\KloverCloud\Downloads\chrome-win64\chrome-win64\chrome.exe
    maximize browser window
    sleep    3