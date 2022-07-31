*** Settings ***
Documentation    Suite description

*** Test Cases ***
# parametro para usr com remove tags
#  robot -i sanity inclui uma tag
#  robot -e regression exclui uma tag
TC1 USer Registration Test
    [Tags]    regression
    log to console    This is user reg test
    log to console    user registratio test is over

TC2 Login test
    [Tags]    sanity
    log to console    This is login test
    log to console    Login test is  over

TC3 Change user settings
    [Tags]    regression
    log to console    This is changin user settings test
    log to console    Change user setting s teste is over

TC4 Logout test
    [Tags]    sanity
    log to console    This is Logout test
    log to console    Logout Test is over