*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Tab Handle Test
    open browser    http://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    maximize browser window
    sleep    3

    # for mouse right click action
    open context menu    xpath:/html/body/div[1]/section/div/div/div/p/span
    sleep    3
    close browser

    # Double click action
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    sleep    3

    double click element    xpath://*[@id="HTML10"]/div[1]/
    sleep    3
    close browser

    # Drag & drop
    open browser    http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html  chrome
    maximize browser window
    sleep    2

    drag and drop    id:box6    id:box106
    sleep    5

    close browser
*** Keywords ***
