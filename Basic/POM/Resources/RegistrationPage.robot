*** Settings ***
Library     SeleniumLibrary
Variables    ../PageObject/locators.py

*** Keywords ***
open the Browser
    [Arguments]    ${SiteUrl}      ${Browser}
    open browser    ${SiteUrl}      ${Browser}
    maximize browser window


Click Register Link
    click element    ${link_reg}

Enter FirstName
    [Arguments]    ${FirstName}
    input text          ${txt_firstName}        ${FirstName}

Enter LastName
    [Arguments]    ${LastName}
    input text          ${txt_lastName}        ${LastName}

Enter Phone
    [Arguments]    ${phone}
    input text          ${txt_phone}        ${phone}

Enter Email
    [Arguments]    ${email}
    input text          ${txt_email}       ${email}


Enter Adress1
    [Arguments]    ${address1}
    input text          ${txt_add1}        ${address1}



Enter City
    [Arguments]    ${city}
    input text          ${txt_city}        ${city}


Enter State
    [Arguments]    ${state}
    input text          ${txt_state}        ${state}

Enter Postcode
    [Arguments]    ${postcode}
    input text          ${txt_postCode}        ${postcode}

Selecty Country
    [Arguments]    ${country}
    select from list by label    ${drp_country}     ${country}

Enter UserName
    [Arguments]    ${username}
    input text          ${txt_username}        ${username}

Enter Password
    [Arguments]    ${password}
    input text          ${txt_Password}        ${password}

Enter ConfirmPassword
    [Arguments]    ${ConfirmPassword}
    input text          ${txt_conformedPassword}        ${ConfirmPassword}

Click Submit
    click button    ${btn_submit}

Verify Successful login
    title should be    Register: Mercury Tours

close my browser
    close all browsers