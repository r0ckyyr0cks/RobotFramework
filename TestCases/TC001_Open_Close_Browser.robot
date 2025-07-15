*** Settings ***
Library       SeleniumLibrary

Resource      ../Resources/Initiate_Browser.robot

Test Setup        Browser Setup TC001
Test Teardown     Close Browser Window And Exit

*** Test Cases ***
TC001 Open and Close Browser
    Input Text            name:fld_username                              ranjanr
    Input Text            xpath://*[@id="tab-content1"]/form/input[3]    rakesh.entrust@outlook.com
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
