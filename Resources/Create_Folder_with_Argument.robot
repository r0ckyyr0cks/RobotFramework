*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/Keyword_Create_Folder_with_Argument.py

*** Keywords ***
Create Folder at Runtime with Argument
    [Arguments]    ${foldername}    ${subfoldername}
    create_folder    ${foldername}
    create_sub_folder    ${subfoldername}
    Log To Console    "Task Done Successfully"