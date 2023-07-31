*** Settings ***
Library    BuiltIn
Variables    test_library.py
Library  Process
Library  OperatingSystem

*** Test Cases ***
Run Output Function     ${2}

*** Keywords ***
Run Output Function
    [Arguments]  ${num}
    ${output}  Run and Return RC  python -c "from test_function import output; output(${num})"
    Run Keyword If  '${output}' == 'System error'  Fail  ${output}
    Should Be Equal As Integers  ${output}  10/${num}

