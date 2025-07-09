*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Test Cases ***
TC004 List Variable
    ${List}    Create List    Hello    22    23.23    World    Pitney@Bowes$#123
    ${List_length}    Get Length    ${List}
    Log To Console    ${List_length}
    ${list_data}=   get from list  ${List}  4

