*** Settings ***


*** Test Cases ***
Forloop1:
    FOR    ${i}     IN RANGE    1   10
    LOG TO CONSOLE    ${i}
    END

Forloop2
    FOR    ${i}     IN      1  2    3  4  5  6  7  8  9
    LOG TO CONSOLE    ${i}
    END

Forloop3
    @{items}    create list    1    2   3   4   5
        FOR    ${i}     IN    @{items}  # means get item one bye one and add into ${i}
        LOG TO CONSOLE    ${i}
        END

FORloop4
    FOR     ${i}    IN    john  david   smith   scott
    log to console    ${i}
    END

FORloop5
    @{namelist}     create list     john  david   smith   scott
    FOR     ${i}    IN     @{namelist}
    log to console    ${i}
    END

FORloop6withExit
     @{items}       create list    1    2   3   4   5
     FOR    ${i}    IN    @{items}
         log to console    ${i}
         exit for loop if    ${i}==3
     END