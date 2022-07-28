*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup          Open my Browser
Suite Teardown      Close browsers
Test Template       Invalid login


*** Test Cases ***          username                password
Right user empty pass       admin@yourstore.com         ${EMPTY}
Right user wrong pass       admin@yourstore.com         zxc
Wrong user right pass       adm@yourstore.com         admin
Wrong user empty pass       adm@yourstore.com         ${EMPTY}
Wrong user wrong pass       adm@yourstore.com         zxc


*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}

    Input Username    ${username}
    Input pwd         ${password}
    Click Login Button
    Error message should be visible



