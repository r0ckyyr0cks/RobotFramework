*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Documentation    This script does the captcha processing after which search is performed

Resource    ../Resources/Initiate_Browser.robot
Resource    ../Resources/Process_Captcha_BiharBhumi.robot

Test Setup             Browser Setup Bihar Bhumi
Test Teardown          Close Browser Window And Exit

*** Test Cases ***
TC001 Open and Close Browser
    [Documentation]    Search for Agricultural Land
    [Tags]    Banka  Bhagalpur  Bihar
    Click Link                   https://parimarjan.bihar.gov.in/BiharBhumiReport/ViewJamabandi.aspx
    Switch Window                Online Mutation
    #Select Jila
    Select From List By Label    id:MainContent_ddlDistrict                            Banka
    #Select Anchal
    Select From List By Label    id:MainContent_ddlCircle                              Rajaun
    #click button proceed
    Click Button                 //input[@name='ctl00$MainContent$btnproceed']
    Sleep                        1s
    #select halka
    Select From List By Value    id:MainContent_ddlHalka                               13
    #select Mauja
    Select From List By Value    id:MainContent_ddlMauja                               570
    #click the radio button
    Click Element                xpath://*[@id="MainContent_rdo_KhataNo"]
    #Process Captcha Operation
    ${total}=                    Process Captcha Operation
    Input Text                   id:MainContent_TextBox2                                ${total}
    #complete captcha operation - end
    Click Element                id:MainContent_btnSearch
    Sleep                        2s
    Execute Javascript	         window.scrollTo(0,document.body.scrollHeight)

    sleep  5 seconds