*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
User's email address
    Input Text                   id=EmailAddress              snakebite@box.sk

User's Firstname
    Input Text                   css=#FirstName               Neha

User's Lastname
    Input Text                   xpath=//*[@id="LastName"]    Rani

User's City
    Input Text                   id=City                      Austin

User's State
    Select From List By Value    StateOrRegion                TX

User's Gender
    Select Radio Button          gender                       female

Add User to Promotional List
    Select Checkbox              name=promos-name

Submit User Data
    Click Button                 Submit

Verify User Successfully Created
    Page Should Contain          Success! New customer added.