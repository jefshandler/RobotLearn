*** Settings ***
Library     SeleniumLibrary
#Library    OperatingSystem
Resource    ../Resources/resources.robot

*** Variables ***
${url}        https://www.google.com
${url1}       https://opensource-demo.orangehrmlive.com/
${browser}    Chrome

*** Test Cases ***
TC1
    ${PageTitle}=   launchBrowser   ${url1}     ${browser}
    log to console    ${PageTitle}
    log     ${PageTitle}
    input text    id:txtUsername    Admin
    input text    id:txtPassword    admin123


# parte movida para outro diretorio
#*** Keywords ***
#launchBrowser     # nome a ser chamadao
#    # defenindo os parametro para ser usado
#    [Arguments]     ${appurl}  ${appbrowser}
#    open browser    ${appurl}  ${appbrowser}
#    sleep    2
#    maximize browser window
#    ${title}=       get title
#    [Return]        ${title}

