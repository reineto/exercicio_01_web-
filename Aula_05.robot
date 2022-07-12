*** Settings ***
Library     SeleniumLibrary 

*** Variables ***
${input_nome}     name=firstname
${input_sobreNome}    name=lastname
${input_email}    name=reg_email__
${input_senha}    name=reg_passwd__
${input_sexo}    //*[text()="Masculino"]
${input_submit}    name=websubmit
${input_criarConta}    //*[text()="Criar nova conta"]

*** Keywords ***
Dado que estou na página do facebook 
    Open Browser    https://pt-br.facebook.com/    chrome
E clico em "Criar nova conta"
    Click Element    ${input_criarConta}    
Então preencho o campo de cadastro "nome"
    Sleep    5s
    Input Text    ${input_nome}    Reinaldo
E preencho o campo de cadastro "sobrenome"
    Input Text    ${input_sobreNome}    Neto    
E preencho o campo de cadastro "email"
    Input Text    ${input_email}     exevomas@san.paladin
E preencho o campo de cadastro "senha"
    Input Text    ${input_senha}     danielPaladinoEmEdron
E preencho o campo de cadastro "sexo"
    Click Element    ${input_sexo}     
Então envio o formulario
    Click Element    ${input_submit}
E fecho o navegador
    Close Browser

*** Test Cases ***
Cenario 1: Testar formulario
    Dado que estou na página do facebook 
    E clico em "Criar nova conta"
    Então preencho o campo de cadastro "nome"
    E preencho o campo de cadastro "sobrenome"
    E preencho o campo de cadastro "email"
    E preencho o campo de cadastro "senha"
    E preencho o campo de cadastro "sexo"
    Então envio o formulario
    E fecho o navegador

