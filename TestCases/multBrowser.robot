*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}        https://www.google.com
${url1}       https://www.bing.com
${browser}    Chrome

*** Test Cases ***
TabbedWindowsTest
   open browser    ${url}      ${browser}
    maximize browser window

    sleep    2 seconds
    open browser    ${url1}      ${browser}
    maximize browser window
    sleep    2 seconds

    switch browser    1     # alterna entre navegador
    ${title1}=      get title
    log to console    ${title1}

    switch browser    2
    ${title2}=      get title
    log to console    ${title2}

    sleep    3
    close all browsers