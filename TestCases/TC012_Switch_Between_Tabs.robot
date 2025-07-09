*** Settings ***
Library    SeleniumLibrary
Library    Collections

Test Setup                Browser Setup
Test Teardown             Close Browser Window

*** Variables ***
${Browser}    Chrome
${URL}        https://robotframework.org
${URL1}       https://thetestingworld.com
${URL2}       http://www.automationpractice.pl/index.php

*** Test Cases ***
TC012 Handling Multiple Windows using Window Handler
    [Tags]    Test    Contact

    Click Link     let us know
    @{list}        Get Window Handles
    FOR    ${win}    IN    @{list}
        Switch Window    ${win}
        ${var}    Get Location
    END
    Sleep    5

*** Keywords ***
Browser Setup
    Open Browser                                            ${URL}    ${Browser}
    Set Window Size                                         1024   1024
    ${default_timeout}=                                     get selenium implicit wait
#    log to console                                          ${default_timeout}
    set selenium implicit wait                              20s
    ${default_timeout}=                                     get selenium implicit wait
#    log to console                                          ${default_timeout}
    ${speed}=                                               get selenium speed
#    log to console                                          ${speed}
    set selenium speed                                      0.5s
    ${speed}=                                               get selenium speed
#    log to console                                          ${speed}

Close Browser Window
    ${title}    Get Title
    Close Browser