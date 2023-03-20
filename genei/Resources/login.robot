*** Settings ***
Library     SeleniumLibrary
Variables   ../POM/locators.py

*** Test Cases ***
test case
    Login1
    Create Project
*** Keywords ***
Login1
    open browser    https://app.genei.io/dashboard      chrome
    maximize browser window
    wait until element is visible    ${LoginEmail}
    sleep    2
    input text          ${LoginEmail}       usemany5@gmail.com
    sleep    1
    input text          ${LoginPassword}       Qwer1234!!@@
    sleep    1
    Press Keys 	None	ENTER
    wait until element is visible    ${Remind_me_letter}
    sleep    2
    wait until element is visible       ${Remind_me_letter}
    click element    ${Remind_me_letter}
    sleep    2
    wait until element is visible    ${Create_Project}
    sleep    2

Login2
    open browser    https://app.genei.io/dashboard      chrome
    maximize browser window
    sleep    3
    click element    ${Continue_with_Google}
    sleep    1
    input text          ${GmailID}       usemany5@gmail.com
    sleep    2
#    Press Keys   ENTER      "xpath://body"
    Press Keys 	None	ENTER
    sleep    3
    input text          ${GmailPassword}       usemany5@gmail.com
    sleep    1
    Press Keys 	None	ENTER
    sleep    2
    click element    ${Remind_me_letter}
    sleep    4

Create Project
    click element    ${Create_Project}
    wait until element is visible  ${Project_name}
#    sleep    1
    input text    ${Project_name}       test11
    sleep    1
    click element    ${Create_button}
    wait until element is visible    ${Create_Resource}
    sleep    1
    click element    ${Create_Resource}
    sleep    3
    input text    ${Enter_link_to_webpage_or_PDF}   https://www.w3schools.com/html/default.asp
    sleep   1
    Press Keys 	None	ENTER
    sleep    10
    click element    ${cross_button}
    sleep    4

    click element    ${Created_file}
    wait until element is visible    ${summery_button}
    sleep    1

    click element    ${summery_button}
    wait until element is visible     ${compute_all}
    sleep    2
    click element    ${compute_all}
    wait until element is visible     ${generate_note}
    sleep    4

    click element    ${generate_note}
    sleep    2
    wait until element is visible     ${Remind_me_later}
    click element    ${Remind_me_later}
    sleep    2
    wait until element is visible    ${threeDot_button}
    click element    ${threeDot_button}
    sleep    2
    click element    ${Export_summary}
    sleep    5
