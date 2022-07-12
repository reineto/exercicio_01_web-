*** Settings ***
Library     SeleniumLibrary 

*** Variables ***
${class_ofertasDia}     (//a[contains(@class,'nav-menu-item-link')])[1]
${verifico_pagina}    //div[contains(@class,'section_promotions_web')]

*** Keywords ***
Dado que estou na página do mercado livre 
    Open Browser    https://www.mercadolivre.com.br/    chrome    options= add_argument("--window-size=1400,800")
    sleep    3s
E clico em "ofertas do dia"
    sleep    3s
    Click Element    ${class_ofertasDia}

E verifico se estou na página correta
    Element Should Be Visible    ${verifico_pagina}

Então fecho o navegador
    Close Browser

*** Test Cases ***
Cenario 1: Testar formulario
    Dado que estou na página do mercado livre 
    E clico em "ofertas do dia"
    E verifico se estou na página correta
    Então fecho o navegador

