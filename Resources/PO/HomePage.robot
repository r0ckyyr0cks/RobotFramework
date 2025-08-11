*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${START_URL}    https://automationplayground.com/crm/

*** Keywords ***
Load
    Go To    ${START_URL}

Verify Page Loaded
    Page Should Contain    Customers Are Priority One!

Click Sign In Link
    Click Link    Sign In
