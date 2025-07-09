*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Documentation    This script does the captcha processing after which search is performed

*** Variables ***
${Browser}    Chrome
${URL1}        https://parimarjan.bihar.gov.in/biharBhumireport/ViewJamabandi
${URL}       https://biharbhumi.bihar.gov.in/Biharbhumi

*** Test Cases ***
TC001 Open and Close Browser
    [Documentation]    Search for Agricultural Land
    [Tags]    Banka  Bhagalpur  Bihar
    Browser Setup
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
    Sleep    2s
    Execute Javascript	         window.scrollTo(0,document.body.scrollHeight)

    sleep  5 seconds
    Close Browser And Exit

*** Keywords ***
Browser Setup
    Open Browser                 ${URL}                    ${Browser}
#    Maximize Browser Window
    Set Window Size                                        1078    1078
    ${default_timeout}=          get selenium implicit wait
    log to console               ${default_timeout}
    set selenium implicit wait                              10 seconds
    ${default_timeout}=          get selenium implicit wait
    log to console               ${default_timeout}
    ${speed}=                    get selenium speed
    log to console               ${speed}
    set selenium speed                                       0.5 seconds
    ${speed}=                    get selenium speed
    log to console               ${speed}

Close Browser And Exit
    #here dots state, go one level up and save the screenshot in Snapshots folder
    Capture Page Screenshot      ../Snapshots/patnaPropTax.png
    #Close Browser
    Close All Browsers

Process Captcha Operation
        FOR    ${khata_no}    IN RANGE    1    5
            Input Text             name:ctl00$MainContent$txt_KhataNo    ${khata_no}
        END
    #complete captcha operation - start
    ${captchaValue}=    Get Element Attribute    xpath://*[@id="MainContent_TextBox1"]    value
    ${parts}=    Evaluate    "${captchaValue}".split('+')
    ${total}=    Set Variable    0
       FOR    ${part}    IN    @{parts}
          ${int_part}=    Convert To Integer    ${part.strip()}
          ${total}=       Evaluate              ${total} + ${int_part}
       END
    Log    The total is: ${total}
    RETURN    ${total}