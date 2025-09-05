*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${username}        bhaiji12@gmail.com
${password}        mind2mind

*** Keywords ***
Enter Username
    Input Text            id=email           ${username}

Enter Password
    Input Password        id=passwd          ${password}

Submit Credentials
    Press Key             id=passwd          \\13