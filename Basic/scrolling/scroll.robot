*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.guru99.com/test/newtours/
*** Test Cases ***
ScrollingTest
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    maximize browser window
    sleep    3

    # For horizontal & virtical scrolling
    execute javascript    window.scrollTo(0,1500)

    #for target element

    scroll element into view    //*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[16]/td[2]
    sleep    2

    scroll element into view    //*[@id="content"]/div[2]/div[2]/table[2]/tbody/tr[58]/td[2]
    sleep    3
    # till bottn/end of the page of the page
    execute javascript    window.window.scrollTo(0,document.body.scrollHeight)
    sleep    2
    # again scroll for start page
    execute javascript    window.window.scrollTo(0,-document.body.scrollHeight)
    sleep    2

    close browser
