*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Dashbord for the Users Listed
    Page Should Contain    Our Happy Customers


Click New User
    Click Link             New Customer
