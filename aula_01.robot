*** Settings ***
Library     SeleniumLibrary 

*** Variables ***
${input_name}    id=name
${input_number}    id=phone
${input_email}    id=email
${input_password}    id=password
${input_address}    id=address
${button_submit}    name=submit
*** Keywords ***
Dado que estou na página do formulario 
    Open Browser    https://itera-qa.azurewebsites.net/home/automation    chrome
E preencho o campo name
    Input Text    ${input_name}    Arya Stark
E preencho o campo number
    Input Text    ${input_number}    555-1234
E preencho o campo email
    Input Text    ${input_email}     arya.stark@winterfell.com
E preencho o campo password
    Input Text    ${input_password}    123456
E preencho o campo address
    Input Text    ${input_address}     Rua Winterfell 13 B
Então envio o formulario
    Click Element   ${button_submit}
E fecho o navegador
    Close Browser

*** Test Cases ***
Cenario 1: Testar formulario
    Dado que estou na página do formulario 
    E preencho o campo name
    E preencho o campo number
    E preencho o campo email
    E preencho o campo password
    E preencho o campo address
    Então envio o formulario
    E fecho o navegador
