*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL1}    https://thetestingworld.com/testings
${URL2}    https://omayo.blogspot.com/
${URL3}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases ***
TC006 Simulate Browser Button
    Browser Setup

    Go To    ${URL2}
    ${URL01}    get location
    Log To Console    ${URL01}
    Go Back
    ${URL01}    Get Location
    Log To Console    ${URL01}

    Sleep  5
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

