*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}        https://swisnl.github.io/jQuery-contextMenu/demo.html
${url1}       https://www.bing.com
${browser}    Chrome

*** Test Cases ***
MouseActions
    open browser    ${url}  ${browser}
    maximize browser window
    sleep    2
    # clicando com botao direito do mouse
    open context menu    xpath://span[@class='context-menu-one btn btn-neutral']
    sleep    2
    # dando 2 clicks
    go to       https://testautomationpractice.blogspot.com
    maximize browser window
    double click element    xpath://button[contains(text(),'Copy Text')]

    # Drag drop
    go to       http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    drag and drop    id:box6    id:box106
    sleep    3

    close browser






