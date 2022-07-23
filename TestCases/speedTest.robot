*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}        http://demowebshop.tricentis.com/register
${browser}    Chrome

*** Test Cases ***
RegTest
    open browser    ${url}      ${browser}
    maximize browser window
    ${implicit}=        get selenium implicit wait
    log to console    ${implicit}
#    set selenium speed    1seconds    #time zero.5 (meio segundo)
#    set selenium timeout    10 seconds    # pode determinar o tempo de espera no cmando wait
#    wait until page contains    Regiter    # Agarda ate aparecer, senao apos 5 segundo ele gera o erro
    set selenium implicit wait    6 seconds
    ${implicit}=        get selenium implicit wait
    log to console    ${implicit}
    select radio button    Gender    M

    input text    name:FirstName    Jeferson
    input text    name:LastName    Shandler
    input text    name:Email    Shandler@test.com
    input text    name:Password    jefshandler
    input text    name:ConfirmPassword    jefshandler



    close browser

    close all browsers    # comando para fechar multiplas instancias do navegador
