*** Settings ***


Suite Setup    log to console       Opening Browser
Suite Teardown    log to console    Closing Browser

Test Setup    log to console    Login to application
Test Teardown    log to console     Logout from application


*** Test Cases ***
TC1 Prepair recharge
    log to console  this is prepaird recharge testcase

TC2 postpaid recharge
    log to console  this is postpaid recharge testcase

TC3 Search
    log to console  this is search test testcase

TC4 Advanced Search
    log to console  this is Advanced search test testcase