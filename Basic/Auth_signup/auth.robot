*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Tab Handle Test
#    format http://username:password@the-internet.herokuapp.com/basic_auth
    Open Browser    http://admin:admin@the-internet.herokuapp.com/basic_auth    chrome
    maximize browser window
    sleep    3

Test Teardown
    Close All Browsers