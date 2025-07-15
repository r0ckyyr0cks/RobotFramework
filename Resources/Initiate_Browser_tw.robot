*** Settings ***
Library        SeleniumLibrary
Library        ../ExternalKeywords/Keyword_Create_Folder.py

*** Variables ***
${Browser}     Chrome
${URL}         https://www.thetestingworld.com/testings/



*** Keywords ***
Browser Setup
    Open Browser                                            ${URL}    ${Browser}
    Set Window Size                                         1024   1024
    ${default_timeout}=                                     get selenium implicit wait
    set selenium implicit wait                              20s
    ${default_timeout}=                                     get selenium implicit wait
    ${speed}=                                               get selenium speed
    set selenium speed                                      0.2s
    ${speed}=                                               get selenium speed

Close Browser Window
    Close Browser

Create Function at Runtime
    create_folder