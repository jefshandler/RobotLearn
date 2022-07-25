*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
launchBrowser     # nome a ser chamadao
    # defenindo os parametro para ser usado
    [Arguments]     ${appurl}  ${appbrowser}
    open browser    ${appurl}  ${appbrowser}
    sleep    2
    maximize browser window
    ${title}=       get title
    [Return]        ${title}
