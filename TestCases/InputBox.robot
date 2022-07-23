*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}        https://demo.nopcommerce.com
${browser}    Firefox

*** Test Cases ***
TestInputBox
    open browser    ${url}      ${browser}
    maximize browser window
    title should be      nopCommerce demo store
    click link    xpath://a[@class='ico-login']
    ${"email_txt"}      set variable    id:Email
    element should be visible    ${"email_txt"}
    element should be enabled    ${"email_txt"}

    input text      ${"email_txt"}    jef.contas.qa@gmail.com
    sleep    5
    clear element text    ${"email_txt"}
    sleep    5
    close browser


