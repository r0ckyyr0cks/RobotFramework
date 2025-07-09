*** Settings ***
Library    SeleniumLibrary
Library    Collections

Resource    ../Resources/Initiate_Browser.robot

Test Setup            Browser Setup Fourth URL
Test Teardown         Close Browser Window

*** Test Cases ***
TC009-1 Simulate Keyboard
    Click Link                    Sign in
    Press Key                     id:email        neha.rani@gmail.com
    Press Key                     id:passwd       \\13
    #validation
    Wait Until Page Contains      Password is required
    Sleep    1

TC009-2 Simulate Keyboard
    Click Link                    Sign in
    Press Key                     id:passwd       r@ke5h
    Press Key                     id:passwd       \\13
    #validation
    Wait Until Page Contains      An email address required.
    Sleep    1

TC009-3 Simulate Keyboard
    Click Link                    Sign in
    Press Key                     id:email        neha.rani@gmail.com
    Press Key                     id:passwd       r@ke5h
    Press Key                     id:passwd       \\13
    #validation
    Wait Until Page Contains      Authentication failed.
    Sleep    1