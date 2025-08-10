*** Settings ***
Library    SeleniumLibrary

Resource    ../../Resources/Take_Screenshot.robot

*** Variables ***


*** Keywords ***
Begin Web Test
    Open Browser    about:blank    chrome
    Set Window Size                                         width=1024   height=1024
    ${default_timeout}=                                     get selenium implicit wait
    set selenium implicit wait                              20 seconds
    ${default_timeout}=                                     get selenium implicit wait
    ${speed}=                                               get selenium speed
    set selenium speed                                      0.2s
    ${speed}=                                               get selenium speed

End Web Test
    Take Screenshot With Random Name
    Close All Browsers
