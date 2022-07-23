*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}        https://blazedemo.com/login
${browser}    Chrome

*** Test Cases ***
TestInputBox
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed    0.5seconds    #time zero.5 (meio segundo)

    # selecionar radio button
#    select radio button     name    opcao

    # selecionar Check box
    select checkbox    remember

    # Tirar a selecao check box
    unselect checkbox    remember


    close browser
