*** Settings ***
Library    SeleniumLibrary
Library    Collections

Resource    ../Resources/Initiate_Browser.robot
Resource    ../Resources/Create_Folder.robot

Test Setup            Browser Setup Fourth URL
Test Teardown         Close Browser Window And Exit

*** Test Cases ***
TC016 Create Folder without an Argument
    Create Folder at Runtime
    Click Link                    Sign in
    Press Key                     id:email        neha.rani@gmail.com
    Press Key                     id:passwd       \\13
    #validation
    Wait Until Page Contains      Password is required
    Sleep    1