*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Tab Handle Test
    open browser    http://www.google.com    Chrome
    maximize browser window
    sleep    3