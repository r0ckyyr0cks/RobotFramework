*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${username}        stratus.noida.pb@gmail.com
${password}        mind2mind

*** Keywords ***
Enter Username
    Input Text            id=email-id        ${username}

Enter Password
    Input Password        id=password        ${password}

Remember Credentials
    Select Checkbox       id=remember

Submit Credentials
    Click Button          id=submit-id