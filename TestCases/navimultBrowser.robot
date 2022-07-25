*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}        https://www.google.com
${url1}       https://www.bing.com
${browser}    Chrome

*** Test Cases ***
NavigateTest
   open browser    ${url}      ${browser}
   ${loc}=     get location
    log to console    ${loc}
    maximize browser window
    sleep    2 seconds
    go to     https://www.youtube.com
    sleep    2 seconds
    ${loc}=     get location
    log to console    ${loc}

    go back
    ${loc1}=     get location
    log to console    ${loc1}


    sleep    3
    close all browsers