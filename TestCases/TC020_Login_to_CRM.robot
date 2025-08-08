*** Settings ***
Library        SeleniumLibrary

Resource        ../Resources/Initiate_Browser.robot

Test Setup               Browser Setup TC020
Test Teardown            Close Browser Window And Exit

#run the script
#robot -d .\Reports\ .\TestCases\TC020_Login_to_CRM.robot

*** Test Cases ***
TC013 Validate login and add new customer
    Page Should Contain          Customers Are Priority One!
    Click Link                   Sign In
    Page Should Contain          Login
    Input Text                   id=email-id                  stratus.noida.pb@gmail.com
    Input Password               id=password                  mind2mind
    Click Button                 id=submit-id
    Page Should Contain          Our Happy Customers
    Click Link                   New Customer
    Page Should Contain          Add Customer
    Input Text                   id=EmailAddress              snakebite@box.sk
    Input Text                   css=#FirstName               Neha
    Input Text                   xpath=//*[@id="LastName"]    Rani
    Input Text                   id=City                      Austin
    Select From List By Value    StateOrRegion                TX
    Select Radio Button          gender                       female
    Select Checkbox              name=promos-name
    Click Button                 Submit
    Page Should Contain          Success! New customer added.