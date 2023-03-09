*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.guru99.com/test/newtours/
*** Test Cases ***
Tab Handle Test
    open browser    ${url}      ${browser}
    maximize browser window
    ${TotalLinks}=    get element count    xpath://a
    log to console    Total links are ${TotalLinks}

    @{LinkItems}    create list

    FOR    ${i}     IN RANGE    1       ${TotalLinks}
        ${linkText}=    get text    xpath:(//a)[${i}]
        log to console    ${linkText}
    END