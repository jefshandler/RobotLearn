*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/login_resources.robot
#Library     DataDriver    ../TestData/testData.xlsx    sheet_name=plan1
Library     DataDriver    ../TestData/testData.csv

Suite Setup    Open my Browser
Suite Teardown      Close browsers
Test Template       Invalid login


*** Test Cases ***
LoginporExcell using Username..: ${username} and Pass..: ${password}


*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}

    Input Username    ${username}
    Input pwd         ${password}
    Click Login Button
    Error message should be visible

