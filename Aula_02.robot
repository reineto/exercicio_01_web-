*** Settings ***
Library     SeleniumLibrary 

*** Variables ***
${input_name}    //input[@id="firstName"]
${input_nameLast}    //input[@id="lastName"]
${input_email}    //input[@id="userEmail"]
${input_gender}    //[@id="gender-radio-1"]
${input_mobile}    //input[@id="userNumber"]
${input_hobbies}    //[@id="hobbies-checkbox-3"]
${button_submit}    //button[@id="submit"]



*** Keywords ***
Dado que estou na página do formulario 
    Open Browser    https://demoqa.com/automation-practice-form    chrome
E preencho o campo name
    Input Text    ${input_name}    Arya
E preencho o campo lastName
    Input Text    ${input_nameLast}    Stark
E preencho o campo email
    Input Text    ${input_email}    arya.stark@winterfell.com
E preencho o campo gender
    Click Element    ${input_gender}
E preencho o campo mobile
    Input Text    ${input_mobile}    555-1234
E preencho o campo hobbies
    Click Element    ${input_hobbies}
Então envio o formulario
    Click Button    ${button_submit}
E fecho o navegador
    Close Browser


*** Test Cases ***
Cenario 1: Testar formulario
    Dado que estou na página do formulario 
    E preencho o campo name
    E preencho o campo lastName
    E preencho o campo email
    E preencho o campo gender
    E preencho o campo mobile
    E preencho o campo hobbies
    Então envio o formulario
    E fecho o navegador

