*** Settings ***
Library     SeleniumLibrary
Resource  ../script/login_resources.robot
Suite Setup     Open my Browser
Suite Teardown      Close Browsers
Test Template           Invalid login

*** Test Cases ***      username             password
Right user empty pwd    admin@yourstore.com     ${EMPTY}
Right user worng pass   admin@yourstore.com     admim
worng user right pass   admin@yorstore.com     admin
wrong user empty pass   admin@yourstre.com     ${EMPTY}
wrong user wrong pass   admin@yorstore.com     osisnd
*** Keywords ***
Invalid login
       [Arguments]     ${username}     ${password}

       Input Username    ${username}
       Input pwd        ${password}
       click login button
       Error message should be visible