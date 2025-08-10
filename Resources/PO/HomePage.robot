*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Load
    Go To    https://automationplayground.com/crm/

Verify Page Loaded
    Page Should Contain    Customers Are Priority One!

Click Sign In Link
    Click Link    Sign In
