*** Settings ***
Library    SeleniumLibrary
Library    Collections

Resource    ../Resources/Initiate_Browser.robot
Resource    ../Resources/Create_Folder_with_Argument.robot

Test Setup            Browser Setup Fourth URL
Test Teardown         Close Browser Window And Exit

*** Test Cases ***
TC017 Create Folder at Runtime when we provide an Argument
    Create Folder at Runtime with Argument    Hello123    Testing
    Click Link                    Sign in
    Press Key                     id:email        neha.rani@gmail.com
    Press Key                     id:passwd       \\13
    #validation
    Wait Until Page Contains      Password is required
    Sleep    1