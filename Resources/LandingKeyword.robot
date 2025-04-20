*** Settings ***
Library    SeleniumLibrary
Variables   ../Page_objects/Locator.py
Library    random
Resource   ../test_data/test_data.robot


*** Keywords ***
Open My Browser    
    [Arguments]    ${url}    ${Browser}
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window
prequotePage helath landinpage
    Wait Until Element Is Visible    ${Pop_up}   
    click Element    ${Pop_up}
    Sleep    1   
    Click Button    ${drop_downhome}
    Click Element    ${Health_downhome}
    Sleep    1
    ${selectno}    random.Choice    ${mobile}   
    Input Text    id:Enter mobile number   ${selectno}
    Sleep    1
    ${selectpin}    random.Choice    ${pincode}
    Input Text    id:Enter your pincode    ${selectpin}
    Click Element    xpath://div/button[contains(text(),"Get free quotes")]
    Sleep    5
    Log To Console    landinpage pass
prequotePage helath holder personal details 

    ${elemenstcheck}    GetWebElements    css:.css-j8yymo

    FOR    ${ele}    IN    @{elemenstcheck}
        ${check}  Get Element Attribute      ${ele}  id 
        
        
            
        END 
    ${selec_family}    random.Choice    ${family}
    Click Element    id:${selec_family}  
    Log To Console    ${selec_family}
        
    
    ${selcid}    random.Choice    ${id}
    
        
    
    IF    $selec_family == 'Children'
            Click Element    id:${selcid}
        
      
    ELSE
            Log To Console    continue
       
    END
    Click Button    xpath://div/button[contains(text(),"Continue")]
    Sleep    10

    Wait Until Page Does Not Contain Element    css:.css-43hhca .MuiInputBase-root .MuiAutocomplete-input
           
    ${dropdown}    Get WebElements    css:.css-43hhca .MuiInputBase-root .MuiAutocomplete-input
    Sleep    5   
    FOR    ${element}    IN    @{dropdown}
            Click Element    ${element}
            Sleep    5

            ${autoselect}     Get WebElements    css:.MuiPopper-root ul .MuiAutocomplete-option
            ${oneautoselect}=    Evaluate    random.choice(${autoselect})    modules=random
            # ${oneautoselect}   random.Choice    ${autoselect}
            Click Element    ${oneautoselect}
            Sleep    5   
            END
    Sleep    5
    Click Element    css://div/button[contains(text(),"View quotes")]    
    Log To Console    persnol page pass