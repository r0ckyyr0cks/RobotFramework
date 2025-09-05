*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${START_URL}    http://www.automationpractice.pl/index.php

*** Keywords ***
Load
    Go To    ${START_URL}

Navigate to Sign in Page
    Click Link    Sign in

Verify Page Loaded
    Page Should Contain    Already registered?

