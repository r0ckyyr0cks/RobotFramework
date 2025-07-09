*** Settings ***
Library                            SeleniumLibrary
Resource                           ../Resources/Initiate_Browser.robot

Test Setup               Browser Setup
Test Teardown            Close Browser Window

*** Test Cases ***
TC011 Handling Multiple Windows using Title
    [Documentation]    This test shows how to handle multiple windows based on Page Ttile
    [Tags]    rahul    shetty

    Click Link                     let us know
    Switch Window                  Robot Framework
    Wait Until Page Contains       Resource File
    ${var1}                        Get Location
    ${title1}                      Get Title
    Title Should Be                Robot Framework
    Switch Window                  GitHub - robotframework/robotframework.github.com: Robot Framework ecosystem from page
    Wait Until Page Contains       robotframework.github.com
    ${var2}                        Get Location
    ${title2}                      Get Title
    Title Should Be                GitHub - robotframework/robotframework.github.com: Robot Framework ecosystem from page
    Sleep                          2s
