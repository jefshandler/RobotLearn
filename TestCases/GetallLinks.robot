*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}        https://testautomationpractice.blogspot.com
${browser}    Chrome

*** Test Cases ***
GetAllLInktest
    open browser    ${url}    ${browser}
    maximize browser window
    ${alllinksCount}=    get element count    xpath://a
    log to console    ${alllinksCount}

    @{LinkItens}    create list

    FOR    ${i}    IN RANGE    1    ${AlllinksCount}
        ${linkText}=    get text   xpath:(//a)[${i}]
        log to console    ${linkText}
    END
