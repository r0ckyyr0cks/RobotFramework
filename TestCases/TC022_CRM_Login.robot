*** Settings ***
Library    SeleniumLibrary

Resource    ../Resources/crm_PO/HomePage.robot
Resource    ../Resources/crm_PO/Common.robot
Resource    ../Resources/crm_PO/LoginPage.robot

Test Setup        Common.Begin Web Test
Test Teardown     Common.End Web Test

#Run Test Script
#robot -d Reports TestCases/TC022_CRM_Login.robot

*** Test Cases ***
TC022 Login to CRM
    HomePage.Load
    HomePage.Navigate to Sign in Page
    HomePage.Verify Page Loaded

    LoginPage.Enter Username
    LoginPage.Enter Password
    LoginPage.Submit Credentials



