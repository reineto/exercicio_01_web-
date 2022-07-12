*** Settings ***
Library     SeleniumLibrary 

*** Variables ***
${input_gender}    //input[@id="female"]
${input_dayMonday}    //input[@id="monday"]
${input_dayFriday}    //input[@id="friday"]
${input_daySunday}    //input[@id="sunday"]


*** Keywords ***
Dado que estou na página do formulario 
    Open Browser    https://itera-qa.azurewebsites.net/home/automation    chrome
    
E preencho o campo "gender"
    Click Element    ${input_gender} 

E preencho o campo "Quais dias da semana são melhores para começar algo novo?
    Click Element    ${input_dayMonday} 
    Click Element    ${input_dayFriday}
    Click Element    ${input_daySunday}

E fecho o navegador
    Close Browser

*** Test Cases ***
Cenario 1: Testar formulario
    Dado que estou na página do formulario 
    E preencho o campo "gender"
    E preencho o campo "Quais dias da semana são melhores para começar algo novo?
    E fecho o navegador

