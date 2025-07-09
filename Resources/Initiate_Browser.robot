*** Settings ***
Library        SeleniumLibrary

Resource    ../Resources/Take_Screenshot.robot

*** Variables ***
${URL}         https://robotframework.org
${URL1}        https://thetestingworld.com
${URL2}        http://www.automationpr
${URL3}        https://testautomationpractice.blogspot.com
${URL4}        http://www.automationpractice.pl/index.php
${URL5}        https://biharbhumi.bihar.gov.in/Biharbhumi

${Browser}     Chrome

*** Keywords ***
Browser Setup
    Open Browser                                            ${URL}                        ${Browser}
    Set Window Size                                         1024   1024
    ${default_timeout}=                                     get selenium implicit wait
    set selenium implicit wait                              20s
    ${default_timeout}=                                     get selenium implicit wait
    ${speed}=                                               get selenium speed
    set selenium speed                                      0.5s
    ${speed}=                                               get selenium speed

Browser Setup First URL
    Open Browser                                            ${URL1}                        ${Browser}
    Set Window Size                                         1024   1024
    ${default_timeout}=                                     get selenium implicit wait
    set selenium implicit wait                              20s
    ${default_timeout}=                                     get selenium implicit wait
    ${speed}=                                               get selenium speed
    set selenium speed                                      0.5s
    ${speed}=                                               get selenium speed

Browser Setup Second URL
    Open Browser                                            ${URL2}                        ${Browser}
    Set Window Size                                         1024   1024
    ${default_timeout}=                                     get selenium implicit wait
    set selenium implicit wait                              20s
    ${default_timeout}=                                     get selenium implicit wait
    ${speed}=                                               get selenium speed
    set selenium speed                                      0.5s
    ${speed}=                                               get selenium speed

Browser Setup Third URL
    Open Browser                                            ${URL3}                        ${Browser}
    Set Window Size                                         1024   1024
    ${default_timeout}=                                     get selenium implicit wait
    set selenium implicit wait                              20s
    ${default_timeout}=                                     get selenium implicit wait
    ${speed}=                                               get selenium speed
    set selenium speed                                      0.5s
    ${speed}=                                               get selenium speed

Browser Setup Fourth URL
    Open Browser                                            ${URL4}                        ${Browser}
    Set Window Size                                         1024   1024
    ${default_timeout}=                                     get selenium implicit wait
    set selenium implicit wait                              20s
    ${default_timeout}=                                     get selenium implicit wait
    ${speed}=                                               get selenium speed
    set selenium speed                                      0.5s
    ${speed}=                                               get selenium speed

Browser Setup Bihar Bhumi
    Open Browser                                            ${URL5}                        ${Browser}
    #Maximize Browser Window
    Set Window Size                                         1078    1078
    ${default_timeout}=                                     get selenium implicit wait
    log to console                                          ${default_timeout}
    set selenium implicit wait                              10 seconds
    ${default_timeout}=                                     get selenium implicit wait
    log to console                                          ${default_timeout}
    ${speed}=                                               get selenium speed
    log to console                                          ${speed}
    set selenium speed                                      0.9 seconds
    ${speed}=                                               get selenium speed
    log to console                                          ${speed}

Close Browser Window And Exit
    #here dots state, go one level up and save the screenshot in Snapshots folder
    Take Screenshot With Random Name
    Close All Browsers