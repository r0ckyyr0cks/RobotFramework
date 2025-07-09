*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://pmcptax.bihar.gov.in/pmc/public/property/search_property.html

*** Test Cases ***
TC001 Open and Close Browser
    [Documentation]    This test is to verify if there is demand dues for House Tax
    [Tags]    Patna  Bihar
    Browser Setup
    Input Text    id:pid    2041492
    Click Button    id:btn_search
    Click Link    View
    Click Link    View Demand Details
    Wait Until Page Contains    There is no demand dues
    #here dots state, go one level up and save the screenshot in Snapshots folder
    Capture Page Screenshot    ../Snapshots/patnaPropTax.png

    sleep  60 seconds
    Close Browser

*** Keywords ***
Browser Setup
    Open Browser    ${URL}    ${Browser}
#    Maximize Browser Window
    Set Window Size  1024   1024
    ${default_timeout}=  get selenium implicit wait
    log to console  ${default_timeout}
    set selenium implicit wait  20 seconds
    ${default_timeout}=  get selenium implicit wait
    log to console  ${default_timeout}
    ${speed}=  get selenium speed
    log to console  ${speed}
    set selenium speed  0.3 seconds
    ${speed}=  get selenium speed
    log to console  ${speed}