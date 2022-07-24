*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}        http://testautomationpractice.blogspot.com
${browser}    Chrome

*** Test Cases ***
handlingAlerts
        open browser    ${url}      ${browser}
        click element    xpath://*[@id="HTML9"]/div[1]/button
        sleep    3 seconds
#        handle alert    accept    # comando para aceitar o alert
#        handle alert    dismiss   # comando para recusar o alert
        handle alert    leave     # comando para ignorar o alert

# how to handle alerts    como lidar com alertas
# how to handle frames    como lidar com quadros
