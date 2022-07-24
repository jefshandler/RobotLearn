*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}        https://www.selenium.dev/documentation/legacy/selenium_1/
${browser}    Chrome

*** Test Cases ***
handlingFrames
    open browser    ${url}      ${browser}
    maximize browser window

    # para trabalhar com sites que contenha frames
    # primeiro frame
#    select frame    nomedoframe
#    click link    nome do item para clicar
#    unselect frame    nomedoframe

    # segundo frame
#    select frame    nomedoframe
#    click link    nome do item para clicar
#    unselect frame    nomedoframe

    # terceiro  frame e assim por diante
#    select frame    nomedoframe
#    click link    nome do item para clicar
#    unselect frame    nomedoframe

# how to handle alerts    como lidar com alertas
# how to handle frames    como lidar com quadros

    close browser