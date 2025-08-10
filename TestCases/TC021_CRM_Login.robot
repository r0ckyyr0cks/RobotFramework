*** Settings ***
Library    SeleniumLibrary

Resource    ../Resources/PO/Common.robot
Resource    ../Resources/PO/HomePage.robot
Resource    ../Resources/PO/LoginPage.robot

Test Setup        Begin Web Test
Test Teardown     End Web Test

#Run Test Script
#robot -d Reports TestCases/TC021_CRM_Login.robot

*** Test Cases ***
TC021
    HomePage.Load
    HomePage.Verify Page Loaded
    HomePage.Click Sign In Link

    LoginPage.Enter Username
    LoginPage.Enter Password
    LoginPage.Remember Credentials
    LoginPage.Submit Credentials