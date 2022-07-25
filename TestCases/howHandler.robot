*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}        https://testautomationpractice.blogspot.com
${browser}    Chrome

*** Test Cases ***
handlingAlerts
        open browser    ${url}      ${browser}
        click element    xpath://*[@id="HTML9"]/div[1]/button    # open alert
        sleep    3 seconds
#        handle alert    accept    # comando para aceitar o alert
#        handle alert    dismiss   # comando para recusar o alert
#        handle alert    leave     # comando para ignorar o alert

#        alert should be present    Press a button!     #se o elemento estiver pressent
#        alert should not be present    Press a button!     # se o elemento de alert nao estiver present
# how to handle alerts    como lidar com alertas
# how to handle frames    como lidar com quadros
