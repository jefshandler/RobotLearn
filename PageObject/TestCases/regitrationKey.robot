*** Settings ***
Documentation    Suite description
Library    SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot

*** Variables ***
${siteUrl}      https://demo.guru99.com/test/newtours/index.php
${Browser}      Firefox

*** Test Cases ***
LoginTest
    [Tags]    DEBUG
    open my browser    ${siteUrl}    ${Browser}
    Click Register Link
    Enter FirstName    Jeferson
    Enter LastName     SHandler
    Enter Phone        999999999
    Enter Email        SHandler@teste.com
    Enter Address1     rua SHandler
#    Enter address2     Bairoo SHandler
    Enter City         Toronto
    Enter state        SHandler
    Enter postalcode   975955000
#    Enter Country      CANADA
    Enter User Name    SHandler@teste.com
    Enter password    123123
    Enter Confirmation password    123123
    Click Register
    sleep    5 seconds
    Verify Sucess Register
    Close my browser



