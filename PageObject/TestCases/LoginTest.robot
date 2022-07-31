*** Settings ***
Documentation    Suite description
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${siteUrl}      https://demo.guru99.com/test/newtours/index.php
${Browser}      Firefox
${user}     tutorial
${pass}     tutorial


*** Test Cases ***
LoginTest
    [Tags]    DEBUG
    open my browser    ${siteUrl}    ${Browser}
    Enter Username    ${user}
    Enter password    ${pass}
    Click Singin
    sleep    5 seconds
    Verify Sucess Login
    Close my browser



