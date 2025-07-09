*** Settings ***
Library                                 SeleniumLibrary
Resource                                ../Resources/Initiate_Browser.robot

Test Setup                              Browser Setup Third URL
Test Teardown                           Close Browser Window

*** Test Cases ***
Handling Simple Alert
    Click Button                        alertBtn
    Handle Alert                        ACCEPT

Handling Confirmation Alert
    Execute Javascript                  window.scrollTo(0,200)
    Click Button                        confirmBtn
    Handle Alert                        ACCEPT
    Wait Until Page Contains            You pressed OK!

Handling Confirmation Alert To Dismiss
    Execute Javascript                  window.scrollTo(0,200)
    Click Button                        confirmBtn
    Handle Alert                        DISMISS
    Wait Until Page Contains            You pressed Cancel!

Handling Prompt Alert
    Execute Javascript                  window.scrollTo(0,100)
    Click Button                        promptBtn
    Handle Alert                        ACCEPT
    Wait Until Page Contains            Hello Harry Potter! How are you today?

Handling Prompt Alert to Dismiss
    Execute Javascript                  window.scrollTo(0,100)
    Click Button                        promptBtn
    Handle Alert                        DISMISS
    Wait Until Page Contains            User cancelled the prompt.
