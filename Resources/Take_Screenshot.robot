*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    Collections
Library    String
Library    OperatingSystem

*** Variables ***
#here dots state, go one level up and save the screenshot in Snapshots folder
${SCREENSHOT_DIR}      ../Snapshots

*** Keywords ***
Take Screenshot With Random Name
    ${random}=        Evaluate        str(__import__('random').randint(1000, 9999))
    ${filename}=      Set Variable    screenshot_${random}.png
    ${full_path}=     Evaluate        __import__('os').path.join(r'''${SCREENSHOT_DIR}''', '''${filename}''')
    Create Directory                  ${SCREENSHOT_DIR}
    Capture Page Screenshot           ${full_path}
    Log To Console                    Screenshot saved as: ${full_path}
