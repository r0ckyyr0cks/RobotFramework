*** Settings ***
Library       SeleniumLibrary
Library       ../ExternalKeywords/Locators.py

Resource      ../Resources/Initiate_Browser.robot

Test Setup        Browser Setup TC001
Test Teardown     Close Browser Window And Exit

*** Test Cases ***
TC018 Open and Close Browser
    Input Text            name:fld_username                              ranjanr
    Input Text            name:fld_email                                 rakesh.entrust@outlook.com
    Clear Element Text    name:fld_username
    Select Radio Button   add_type                                       office
    Input Text            name:fld_username                              ranjanr
    Select Checkbox       name:terms
    Click Link            xpath://*[@id="tab-content1"]/form/div/em/a
    Click Element         xpath://*[@id="popup1"]/a
    Click Button          xpath://input[@type='submit']
    Select Gender
    sleep                 2 seconds
    Close Browser


*** Keywords ***
Select Gender
    Select From List By Index    name:sex    2
    Select From List By Value    name:sex    1
    Select From List By Label    name:sex    Female

Read Element Locator
    [Arguments]    JsonPath
    ${result}=  read_locator_from_json    JsonPath
    RETURN    ${result}