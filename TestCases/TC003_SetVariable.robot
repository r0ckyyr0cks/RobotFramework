*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${Browser}    Chrome
${URL}    https://thetestingworld.com/testings

*** Test Cases ***
TC003-1 Set Variable
    ${Var1}=    Set Variable    HelloWorld
    Log To Console    ${Var1}

TC003-2 Set Key Variable
    ${key_var}    Set Variable    log to console
    Run Keyword    ${key_var}        TestingWorldNoida@gmail.com

TC003-3 Run Keyword If
    ${var}    Set Variable    YES
    Run Keyword If    '${var}'=='NO'    log to console    Value Found
    Run Keyword If    '${var}'=='YES'    log to console    Value Not Found

*** Keywords ***
Browser Setup
    Open Browser    ${URL}    ${Browser}
    Set Window Size  1024   1024
    ${default_timeout}=  get selenium implicit wait
    log to console  ${default_timeout}
    set selenium implicit wait  20 seconds
    ${default_timeout}=  get selenium implicit wait
    log to console  ${default_timeout}
    ${speed}=  get selenium speed
    log to console  ${speed}
    set selenium speed  1 seconds
    ${speed}=  get selenium speed
    log to console  ${speed}