*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}        https://admin-demo.nopcommerce.com
${browser}    Chrome

*** Keywords ***
Open my Browser
    open browser    ${url}      ${browser}
    maximize browser window

Close browsers
    close all browsers

Open Login Page
    go to   ${url}

Input Username
    [Arguments]    ${username}
    input text    id:Email    ${username}


Input pwd
    [Arguments]   ${password}
    input text    id:Password    ${password}

Click Login Button
    click element    xpath://button[contains(text(),'Log in')]

click logout link
    click link    Logout

Error message should be visible
    page should contain    Login was unsuccessful

Dashboard page should br visible
    page should contain    Dashboard
