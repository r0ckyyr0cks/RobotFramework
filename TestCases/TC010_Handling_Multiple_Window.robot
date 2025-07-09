*** Settings ***
Library             SeleniumLibrary
Library             Collections

*** Variables ***
${Browser}    Chrome
${URL1}    https://thetestingworld.com
${URL2}    http://www.automationpractice.pl/index.php

*** Test Cases ***
TC010 Handling Multiple Windows
    Browser Setup

    Open Browser    ${URL2}    ${Browser}
    Switch Browser    1
    ${var1}    Get Location
    Click Link    Quick Demo
    Wait Until Page Contains    Fill The form and get details

    Switch Browser    2
    ${var2}    Get Location
    Click Link    Sign in
    Wait Until Page Contains    Already registered?

    Sleep    5
    Close Browser

*** Keywords ***
Browser Setup
    Open Browser    ${URL1}    ${Browser}
    Set Window Size  1024   1024
    ${default_timeout}=  get selenium implicit wait
    log to console  ${default_timeout}
    set selenium implicit wait  20s
    ${default_timeout}=  get selenium implicit wait
    log to console  ${default_timeout}
    ${speed}=  get selenium speed
    log to console  ${speed}
    set selenium speed  0.5s
    ${speed}=  get selenium speed
    log to console  ${speed}

