*** Settings ***
Library    SeleniumLibrary
Library    Collections

Resource    ../Resources/Initiate_Browser.robot

Test Setup            Browser Setup First URL
Test Teardown         Close Browser Window

*** Test Cases ***
TC007 Execute JavaScript
    Execute Javascript       window.scrollTo(0,1000)
    Sleep                    2s
    Execute Javascript	     window.scrollTo(0,document.body.scrollHeight)
	Sleep                    2s
	Execute Javascript	     window.scrollTo(0,-document.body.scrollHeight)