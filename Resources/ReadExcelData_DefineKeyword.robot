*** Settings ***
Library    ../TestData/ReadExcelData.py


*** Keywords ***
Read Number of Rows
    [Arguments]    ${sheetname}
    ${maxr}        fetch_number_of_rows    ${sheetname}
    RETURN         ${maxr}

Read Excel Data of Cell
    [Arguments]        ${sheetname}    ${row}    ${cell}
    ${celldata}=    fetch_cell_data    ${sheetname}    ${row}    ${cell}
    RETURN     ${celldata}