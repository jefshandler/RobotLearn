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
#Create person table
#    ${output}=    execute sql string    Create table person(id int, first_name varchar(20), Last_name varchar(20));
#    log to console    ${output}
#    should be equal as strings  ${output}    None

#Insert Date in person
#    ${output}=    execute sql string    Insert into person values('',"Noah","Dias",101);
#    log to console    ${output}
#    should be equal as strings  ${output}    None

#Insert Date in person mult using files
#    ${output}=    execute sql script    ./TestData/person.sql
#    log to console    ${output}
#    should be equal as strings  ${output}    None

Check Noah record present in person table
    check if exists in database    select id from person where first_name="Noah"

Check Luciano record not present in person table
    check if not exists in database    select id from person where first_name="Luciano"

Check person table existis in database
    table must exist    person

Verify Row count is Zero
    row count is 0    Select * from person where first_name = 'teste';

Verify Row count is equal to some value
    row count is equal to x    Select * from person where first_name = 'Noah';    1

Verify Row count is Grater than some value
    row count is greater than x    Select * from person where first_name = 'Noah';    0

Verify row count is less than smoe value
    row count is less than x    Select * from person where first_name = 'Noah';    5

Update record in person tabel
    ${output}=      execute sql string    Update person set first_name="Luciano" where id_robot=105
    log to console    ${output}
    should be equal as strings  ${output}    None

Retrive Records from person table
    @{queryResult}=     query       Select * from person;
    log to console    many @{queryResult}

Retrive Records from person table
    @{queryResult}=     query       Select * from person;
    log to console    many @{queryResult}

Delete Records from person table
    ${output}=    execute sql string    Delete from person;
    should be equal as strings    ${output}    None