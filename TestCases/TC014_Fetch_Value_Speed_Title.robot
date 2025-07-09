*** Settings ***
Library                SeleniumLibrary
Library                Collections

Resource               ../Resources/Initiate_Browser_tw.robot

Test Setup             Browser Setup
Test Teardown          Close Browser Window

*** Test Cases ***
TC014-01: How To Fetch Title Of The Page
    Create Function at Runtime
    ${PageTitle}                Get Title

TC014-02: How To Fetch Selenium Speed
    ${SeleniumSpeed}            Get Selenium Speed

TC014-03: How To Fetch Value of an Element
    ${ElementValue}             Get Value                    //input[@type='submit']

TC014-04: How To Fetch Text of an Element
    ${ElementName}              Get Text                     //a[@class='displayPopup']

TC014-05: How To Fetch Text from the Popup
    Click Link                  Read Detail
    ${ElementName1}             Get Text                     popup1

TC014-06: How To Fetch Value from the List
    ${EleVal}                   Get Selected List Value      sex

TC014-07: How To Fetch Text from the List
    ${EleTxt}                   Get Selected List Labels     sex

TC014-08: How To Fetch the Labels
    ${AllLabels}                Get List Items                sex

TC014-09: How To Fetch the Location
    ${ActualUrl}                Get Location

TC014-10: How To Fetch the Page HTML
    ${PageHTML}                Get Source

TC014-11: How To Fetch the Attribute and Count
    ${attr}                    Get Element Attribute           name:fld_username        class
    ${cnt}                     Get Element Count               class:field