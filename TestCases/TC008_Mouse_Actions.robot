*** Settings ***
Library    SeleniumLibrary
Library    Collections

Resource    ../Resources/Initiate_Browser.robot

Test Setup            Browser Setup First URL
Test Teardown         Close Browser Window And Exit

*** Test Cases ***
TC008 Simulate Mouse Actions
    Mouse Over    xpath://*[@id="menu576"]
    Sleep    5
    Mouse Down    xpath://a[text()='Quick Demo']
    Mouse Up    xpath://a[text()='Quick Demo']
    Sleep    2
    Go Back
    Sleep    2
    Double Click Element    xpath://*[@id="ja-search"]/ul/li/a
    Sleep    5
    Go Back
    #    Open Context Menu    xpath://*[@id="menu499"]/span
    Open Context Menu    xpath://span[contains(text(),'VIDEOS')]
    Sleep    5
