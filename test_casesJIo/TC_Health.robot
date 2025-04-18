*** settings ***
Library    SeleniumLibrary
Library    random

*** Variables ***
${Browser}    chrome
${url}    https://devev.jioinsure.in/  
${mobile}     [7894555599,7894561235,7859641236,7539514862]
${random}    random.Choice
${pincode}    [176056,176063,147654,156054,154676]

*** Test Cases ***
HealthpreQuote
    Open Browser    ${url}    ${Browser}
    prequotePage helath
    Close Browser

*** Keywords ***
prequotePage helath
    Wait Until Element Is Visible    css:.modal-scrollable .MuiPaper-root .modal-content .closePopup
    click Element    css:.modal-scrollable .MuiPaper-root .modal-content .closePopup
    Sleep    1   
    Click Button    css:.css-t1oczc
    Click Element    xpath://div[@class="MuiBox-root css-12hd50"]/p[contains(text(),"Health")]
    Sleep    1
        
    Input Text    id:Enter mobile number   ${random}${mobile}
    Sleep    1
    Input Text    id:Enter your pincode    ${random}${pincode}
    Click Element    xpath://div[contains(text(),"Get free quotes")]
    Sleep    3