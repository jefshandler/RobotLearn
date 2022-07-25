*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}        https://www.google.com
${url1}       https://opensource-demo.orangehrmlive.com/
${browser}    Chrome

*** Test Cases ***
loginTC
    open browser    ${url1}  ${browser}
    input text    id:txtUsername    Admin
    input text    id:txtPassword    admin123

    capture element screenshot       xpath://*[@id="divLogo"]/img  F:\projetoPython\RobotLearn\img\logo.png
    capture page screenshot          F:\\projetoPython\\RobotLearn\\img\\loginTC.png