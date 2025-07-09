*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    Collections
Library    String

*** Keywords ***
Process Captcha Operation
        FOR    ${khata_no}    IN RANGE    1    5
            Input Text             name:ctl00$MainContent$txt_KhataNo    ${khata_no}
        END
    #complete captcha operation - start
    ${captchaValue}=    Get Element Attribute    xpath://*[@id="MainContent_TextBox1"]    value
    ${parts}=    Evaluate    "${captchaValue}".split('+')
    ${total}=    Set Variable    0
       FOR    ${part}    IN    @{parts}
          ${int_part}=    Convert To Integer    ${part.strip()}
          ${total}=       Evaluate              ${total} + ${int_part}
       END
    Log    The total is: ${total}
    RETURN    ${total}
