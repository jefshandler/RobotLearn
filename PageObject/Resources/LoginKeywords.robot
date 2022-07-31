*** Settings ***
Library    SeleniumLibrary


Variables    ../PageObjects/Locator.py

*** Variables ***

*** Keywords ***
Open my Browser
    [Arguments]    ${siteUrl}      ${Browser}
    open browser    ${siteUrl}      ${Browser}
    maximize browser window

Enter Username
    [Arguments]    ${username}
    input text    ${txt_loginUserName}      ${username}

Enter password
    [Arguments]    ${password}
    input text    ${txt_loginpassword}      ${password}

Click Singin
    click button    ${btn_singIn}

Verify Sucess Login
    title should be  Login: Mercury Tours

Close my browser
    close browser


