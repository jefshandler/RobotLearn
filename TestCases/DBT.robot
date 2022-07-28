*** Settings ***
Documentation    Suite description
Library    DatabaseLibrary
Library    OperatingSystem


Suite Setup     Connect To Database    pymysql    ${DBName}    ${DBUser}    ${SBPass}     ${DBHost}      ${DBPort}
Suite Teardown    Disconnect From Database


*** Variables ***
${DBName}    test
${DBUser}    root
${SBPass}
${DBHost}    localhost
${DBPort}    3306

*** Test Cases ***
Create person table
    ${output}=    execute sql string    Create table person(id int, first_name varchar(20), Last_name varchar(20));
    log to console    ${output}
    should be equal as strings  ${output}    None
