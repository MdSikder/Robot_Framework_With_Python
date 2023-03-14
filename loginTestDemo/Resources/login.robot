*** Settings ***
Library     SeleniumLibrary
Variables   ../pageObjectModel/locators.py

*** Keywords ***


open the Browser
    open browser    https://demo.guru99.com/test/newtours/      chrome
    maximize browser window
    input text          ${txt_LoginUserName}    tutorial
    input text          ${txt_LoginPassword}       tutorial
    click button    ${btn_signIn}
    title should be    Login: Mercury Tours
    close all browsers