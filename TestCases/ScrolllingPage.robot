*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}        https://www.countries-ofthe-world.com/flags-of-the-world.html
${browser}    Chrome

*** Test Cases ***
ScrollPage
    open browser    ${url}  ${browser}
    maximize browser window
#    execute javascript    window,scrollTo(0,2500)    #scroll em pixell\
    # scroll ate aparecer o item determinado
#    scroll element into view    xpath://*[@id="content"]/div[2]/div[2]/table[2]/tbody/tr[100]/td[1]/img
    sleep    2
    execute javascript    window.scrollTo(0,document.body.scrollHeight)    # vai para o fim da pagina
    sleep   1
    execute javascript    window.scrollTo(0,-document.body.scrollHeight)    # vai para o fim da pagina