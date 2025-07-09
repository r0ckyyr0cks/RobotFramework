*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/Initiate_Browser_tw.robot

Test Setup                Browser Setup
Test Teardown             Close Browser Window

*** Variables ***
${Browser}    Chrome
${URL}        https://thetestingworld.com/testings

*** Test Cases ***
TC001 Open and Close Browser
    [Documentation]           Test
    [Tags]                    TestingWorld
    Fill Form of Testing World
    Sleep  5

*** Keywords ***
Enter Username Email Password
    [Tags]            Form
    [Arguments]       ${username}    ${email}    ${password}    ${retypepassword}
    Input Text        name:fld_username                              ${username}
    Input Text        xpath://*[@id="tab-content1"]/form/input[3]    ${email}
    Input Password    name:fld_password                              ${password}
    Input Password    name:fld_cpassword                             ${retypepassword}

Fill Form of Testing World
    Enter Username Email Password    ranjanr    rakesh.entrust@outlook.com    Pitney@Bowes#123    Pitney@Bowes#123
    Select Checkbox                    name:terms
    Click Link                         xpath://*[@id="tab-content1"]/form/div/em/a
    Click Element                      xpath://*[@id="popup1"]/a
    Click Button                       xpath://input[@type='submit']
    Select From List By Label          name:sex                                          Female
    Input Text                         name:phone                                        +918076046734
    Input Text                         name:address                                      Greater Noida
    Input Text                         name:zip                                          201308
    Select Radio Button                name:add_type                                     office
