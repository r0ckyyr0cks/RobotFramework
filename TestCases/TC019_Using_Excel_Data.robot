*** Settings ***
Library       SeleniumLibrary

Documentation    This Test Case shows how to read data from excel to parameterize login screen

Resource      ../Resources/Initiate_Browser.robot
Resource      ../Resources/ReadExcelData_DefineKeyword.robot

Test Setup        Browser Setup TC019
Test Teardown     Close Browser Window And Exit

#C:\PycharmProjects\RobotFramework>robot -d Reports -v BROWSER:edge TestCases\TC019_Using_Excel_Data.robot

*** Test Cases ***
TC019 Fill Data Reading From Excel
    ${row}=    Read Number of Rows    Sheet1
    FOR  ${i}  IN RANGE  1  ${row}+1
        ${username}=    Read Excel Data of Cell    Sheet1    ${i}    1
        ${password}=    Read Excel Data of Cell    Sheet1    ${i}    2
        Input Text            name:username                                  ${username}
        Input Text            name:password                                  ${password}
        Click Button          xpath://button[@type='submit']
        sleep                 2 seconds
        TRY
            #Execute Javascript    window.alert('This is a test alert from Robot Framework!');
            Sleep    2s    # Give some time to see the alert
            Handle Alert    action=DISMISS
        EXCEPT
            Log    No alert found
        END
    END
