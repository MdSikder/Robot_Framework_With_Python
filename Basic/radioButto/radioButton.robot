*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.guru99.com/test/radio.html


*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed    2seconds

    # to select radio but need to use name & value after keyword
    select radio button    webform  Option 1
#    sleep    3s
    select radio button    webform  Option 2
#    sleep    5s

    # to select & unselect checkbox but need to use name/id
    select checkbox    vfb-6-0
#    sleep    2s
    select checkbox    vfb-6-1
#    sleep    2s
    select checkbox    vfb-6-2
#    sleep    2s

    unselect checkbox    vfb-6-0
#    sleep    2s
    unselect checkbox    vfb-6-1
#    sleep    2s
    unselect checkbox    vfb-6-2
#    sleep    2s

    close browser

*** Keywords ***
