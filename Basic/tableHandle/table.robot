*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TableValidation
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    sleep    2

    scroll element into view    xpath://*[@id="HTML1"]/div[1]/table
    sleep    2

    ${rows}=    get element count    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr
    ${cols}=    get element count    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[1]/th

    log to console     Total rows: ${rows}
    log to console     Total collums: ${cols}

    ${data}=    get text    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[5]/td[1]

    log to console    value: ${data}

    #  table coloum should contains Author in second collum
    # Table path + collum number + collum name

    table column should contain    xpath://table[@name='BookTable']  2    Author

    table row should contain    xpath://table[@name='BookTable']    4    Learn JS

    # path + row + collum + accepted value
    table cell should contain    xpath://table[@name='BookTable']   5   2   Mukesh

    table header should contain    xpath://table[@name='BookTable']     BookName

