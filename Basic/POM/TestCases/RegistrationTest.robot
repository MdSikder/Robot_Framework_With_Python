*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/RegistrationPage.robot


*** Variables ***

${Browser}      Headlesschrome
${SiteUrl}      https://demo.guru99.com/test/newtours/



*** Test Cases ***
registrationTest
    open the Browser     ${SiteUrl}  ${Browser}
    sleep    3
    Click Register Link
    sleep    1

   Enter FirstName    David
   Enter LastName    Vilen
   Enter Phone    147891035
   Enter Email    test@gmail.com
   Enter Adress1    14627/opos
   Enter City    canada
   Enter State    johnxyz
   Enter Postcode    1212/21
   Enter Password    johnxyz
   Enter ConfirmPassword    johnxyz
   Click Submit
   sleep    3
   Verify Successful login
   sleep    3
   close my browser