*** Settings ***
Library    SeleniumLibrary

Resource    ../Resources/PO/Common.robot
Resource    ../Resources/PO/HomePage.robot
Resource    ../Resources/PO/LoginPage.robot
Resource    ../Resources/PO/ListUsersPage.robot
Resource    ../Resources/PO/AddCustomers.robot

Test Setup        Common.Begin Web Test
Test Teardown     Common.End Web Test

#Run Test Script
#robot -d Reports TestCases/TC021_CRM_Login.robot

*** Test Cases ***
TC021 Login and Create a New Cutomer
    HomePage.Load
    HomePage.Verify Page Loaded
    HomePage.Click Sign In Link

    LoginPage.Enter Username
    LoginPage.Enter Password
    LoginPage.Remember Credentials
    LoginPage.Submit Credentials

    ListUsersPage.Verify Dashbord for the Users Listed
    ListUsersPage.Click New User

    AddCustomers.User's email address
    AddCustomers.User's Firstname
    AddCustomers.User's Lastname
    AddCustomers.User's City
    AddCustomers.User's State
    AddCustomers.User's Gender
    AddCustomers.Add User to Promotional List
    AddCustomers.Submit User Data
    AddCustomers.Verify User Successfully Created