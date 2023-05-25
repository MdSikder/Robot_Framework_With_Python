# Run susing tag
# 'robot --include=sanity Basic/Grouping/tagging.robot'
#'robot --include=regression Basic/Grouping/tagging.robot'




*** Settings ***


*** Test Cases ***
TC1 User RegistrationTest
    [Tags]      sanity
    log to console  This is user reg test
    log to console  user reg test is over

TC2 User LoginTest
    [Tags]      regression
    log to console  This is user Login test
    log to console  user Login test is over

TC3 Change User settings
    [Tags]      regression
    log to console  This is change user settings test
    log to console    Change user settings test is over

TC4 User LogOutTest
    [Tags]      sanity
    log to console  This is user LogOut test
    log to console  user LogOut test is over