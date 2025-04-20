*** settings ***
Library    SeleniumLibrary
Library    random
Library    Collections
Library    XML
Library    Easter
Resource    ../Resources/LandingKeyword.robot

*** Variables ***
${Browser}    chrome
${url}    https://devev.jioinsure.in/ 

*** Test Cases ***
Health_prequote
    Open My Browser    ${url}    ${Browser}
    prequotePage helath landinpage
    prequotePage helath holder personal details




        
   