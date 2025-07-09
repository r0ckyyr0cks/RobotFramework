*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***

*** Test Cases ***
TC005-1 Using FOR Loop
    FOR    ${i}    IN RANGE    1    10
        log to console    ${i}
    END

TC005-2 List Values using For Loop
    @{List}    Create List    Hello    22    23.23    World    Pitney@Bowes$#123
    FOR    ${j}    IN    @{List}
        Log To Console    ${j}
    END
