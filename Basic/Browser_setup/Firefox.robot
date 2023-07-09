*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Tab Handle Test
    open browser    http://www.google.com    Firefox
    maximize browser window
    sleep    3