*** Settings ***
Library     SeleniumLibrary
Variables   ../POM/locators.py
Resource    ../Resources/login.robot


*** Test Cases ***
Testcase1:
    Login
    sleep    3

