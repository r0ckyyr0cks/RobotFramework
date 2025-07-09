*** Settings ***
Library                SeleniumLibrary
Library                Collections

*** Variables ***

${MY_VALUE}            100
${URL}                http://google.co.uk

*** Test Cases ***
Testing a true IF statement
    Run Keyword If    ${MY_VALUE} < 100    Keyword 1

Testing a false IF statement
    Run Keyword If    ${MY_VALUE} > 200    Keyword 1

Testing an IF/ELSE statement
    Run Keyword If    ${MY_VALUE} > 200    Keyword 1    ELSE    Keyword 2

Testing an IF/ELSE IF/ELSE statement
    Run Keyword If    ${MY_VALUE} > 200    Keyword 1    ELSE IF    ${MY_VALUE} == 100    Keyword 3

*** Keywords ***
Keyword 1
    Open Browser        about:addons             Firefox
    Set Window Size     1024                     1024
    Sleep               5s
    Close Browser

Keyword 2
    Open Browser        edge://extensions        Edge
    Maximize Browser Window
    Sleep               5s
    Close Browser

Keyword 3
    Open Browser        chrome://extensions      Chrome
    Set Window Size     900                      900
    Sleep               5s
    Close Browser