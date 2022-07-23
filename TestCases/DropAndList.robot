*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}        https://blazedemo.com
${browser}    Chrome

*** Test Cases ***
Handling DropBox and ListBox
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed    1seconds    #time zero.5 (meio segundo)

    # Drop box
    select from list by label     fromPort    Boston
    sleep    1
    select from list by index    fromPort    5         # selecionando pelo indice
    sleep    1
    select from list by value    fromPort    Paris         # selecionando pelo Value html

    # selecionar em list box
    select from list by label     nomedoelemento    qual-opcao
    select from list by label     nomedoelemento    qual-opcao-podendo-ser-mais-de-uma
    select from list by index     nomedoelemento    qual-opcao-podendo-ser-mais-de-uma
    select from list by value     nomedoelemento    qual-opcao-podendo-ser-mais-de-uma

    # tirar a selecao da list Box
#    unselect from list by label     nomedoelemento    qual-opcao-podendo-ser-mais-de-uma




    close browser
