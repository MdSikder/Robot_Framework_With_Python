*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Tab Handle Test
#    open browser    http://www.google.com    Firefox
    Open Browser    http://www.google.com    chrome    alias=Browser1
    Open Browser    http://www.google.com    Edge    alias=Browser2
    Open Browser    http://www.google.com    Firefox    alias=Browser3
#    Open Browser    http://www.google.com    chrome    alias=Browser4
    maximize browser window
    sleep    3

Test Teardown
    Close All Browsers





