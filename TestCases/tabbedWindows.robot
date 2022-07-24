*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}        http://demo.automationtesting.in/Windows.html
${browser}    Chrome

*** Test Cases ***
TabbedWindowsTest
    open browser    ${url}      ${browser}
    maximize browser window
    click element   xpath://*[@id="Tabbed"]/a/button
#    select window   title=Selenium
    switch window   title:Selenium     # comando para alternar em Tabs no vavegador
    sleep    2 seconds
    click element   xpath://*[@id="main_navbar"]/ul/li[4]/a/span
    sleep    2 seconds
    switch window    title:Frames & windows
    sleep    2 seconds
    click link    xpath://html/body/div[1]/div/div/div/div[1]/ul/li[2]/a
    close all browsers
#        alert should be present    Press a button!     #se o elemento estiver pressent
#        alert should not be present    Press a button!     # se o elemento de alert nao estiver present
# how to handle alerts    como lidar com alertas
# how to handle frames    como lidar com quadros