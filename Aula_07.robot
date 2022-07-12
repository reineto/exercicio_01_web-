*** Settings ***
Library     SeleniumLibrary 

*** Variables ***
${input_usuario}     //input[@type='text'][contains(@id,'userLoginId')]
${input_senha}    //input[@type='password'][contains(@id,'password')]
${button_logar}   //button[@class='btn login-button btn-submit btn-small'][contains(.,'Entrar')]
${verificar}    //div[@data-uia='text'][contains(.,'Desculpe, não encontramos uma conta com esse endereço de email. Tente novamente ou crie um nova conta.')]
*** Keywords ***
Dado que estou na página do netflix
    Open Browser    https://www.netflix.com/br/login    chrome    
    sleep    3s
E preencho o campo "usuario"
    Input Text    ${input_usuario}    danielPaladino
E preencho o campo "senha"
    Input Text    ${input_senha}    diretamentedeEdron
E clico no botão "entrar"
    Click Button    ${button_logar} 
    Sleep    3s
E verifico se retornou o erro
    Sleep    3s
    Element Should Be Visible    ${verificar}
Então fecho o navegador
    Close Browser

*** Test Cases ***
Cenario 1: Testar formulario
    Dado que estou na página do netflix
    E preencho o campo "usuario"
    E preencho o campo "senha"
    E clico no botão "entrar"
    E verifico se retornou o erro
    Então fecho o navegador

