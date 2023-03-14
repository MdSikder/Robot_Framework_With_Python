*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/login.robot

*** Test Cases ***
LoginTest
    open the Browser
    sleep    3
