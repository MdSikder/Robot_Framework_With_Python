*** Settings ***
Documentation    'call Method' Keyword deomo program
Variables     test.py

*** Test Cases ***
basic test
    ${result}=  call method    ${cal}   addition    20  40
    log to console    ${result}
    should be equal as numbers    ${result}     60

class Calculator:
def addition(self, num1, num2):
erg=float(num1) + float(num2)
return erg

cal = Calculator