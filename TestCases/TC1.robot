*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Variables ***
${url}        https://demo.nopcommerce.com
${browser}    Chrome

*** Test Cases ***
LoginTest
    open browser    ${url}      ${browser}
    loginToApplication
    close browser



*** Keywords ***
loginToApplication
    maximize browser window
    click link    xpath://a[@class='ico-login']
    input text    id:Email    jef.contas.qa@gmail.com
    input text    id:Password    Test@123
    click element    xpath://html/body/div[6]/div[3]/div/div/div/div[2]/div[1]/div[2]/form/div[3]/button