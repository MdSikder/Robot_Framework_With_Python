*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Tab Handle Test
    open browser    http://www.google.com    ie
    maximize browser window
    sleep    3
    close all browsers