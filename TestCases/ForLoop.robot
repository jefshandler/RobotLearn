
*** Test Cases ***
#ForLoop1
#    FOR  ${i}    IN RANGE     0     10
#        LOG TO CONSOLE    ${i}
#    END

#ForLoop2
#    FOR  ${i}    IN     1 2 3 4 5 6 7 8 9 10
#        LOG TO CONSOLE    ${i}
#    END

ForLoop3
    FOR  ${i}    IN     1    2  3  4  5  6  7  8  9  10
        LOG TO CONSOLE    ${i}
        exit for loop if   ${i}==7
    END
ForLoop4WithList
    ${items}        create list   1    2    3    4    5    6    7
    FOR  ${i}    IN    ${items}
        log to console    ${i}
    END

#ForLoop5
#    FOR  ${i}    IN     1    2  3  4  5  6  7  8  9  10
#        LOG TO CONSOLE    ${i}
#    END

ForLoop6
    FOR  ${i}    IN     Jeferson    Helia    Noah    Larissa
        LOG TO CONSOLE    ${i}
    END
ForLoop7WithListName
    ${name}        create list    Jeferson    Helia    Noah    Larissa    Toto    Jujuba
    FOR  ${i}    IN    ${name}
       LOG TO CONSOLE    ${i}
    END
ForLoop8WithListRxit
    ${items}        create list    1   2   3    4    5    6
    FOR  ${i}    IN    ${items}
        LOG TO CONSOLE   ${i}
        exit for loop if   ${i}==2
    END
