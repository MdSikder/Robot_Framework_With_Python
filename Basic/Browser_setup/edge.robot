*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Tab Handle Test
    open browser    http://www.google.com    Edge
    maximize browser window
    sleep    3