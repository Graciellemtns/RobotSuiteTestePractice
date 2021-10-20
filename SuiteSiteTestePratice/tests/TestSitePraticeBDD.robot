*** Settings ***
Resource          ../resource/Resource.robot
Test Setup        Abrir navegador
Test Teardown     Fechar navegador

*** Variables ***
${URL}           http://automationpractice.com/index.php
${BROWSER}       chrome

*** Test Case ***
Caso de Teste 01: Pesquisar produto existente
    Dado que estou na pagina home do site
    Quando eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" deve ser listado na pagina resultado da busca

Caso de Teste 02: Pesquisar produto não existente
    Dado que estou na pagina home do site
    Quando eu pesquisar pelo produto "itemNãoExistente"
    Então a mensagem de erro "No results were found for your search "itemNãoExistente""

*** KeyWords ***
##Reutilizando KeyWords

Dado que estou na pagina home do site
    Acessar a pagina home do site

Quando eu pesquisar pelo produto "${PRODUTO}"
    Digitar o nome do produto "${PRODUTO}" no campo Pesquisar
    Clicar no botão Pesquisar

Então o produto "${PRODUTO}" deve ser listado na pagina resultado da busca
    Conferir se o produto "${PRODUTO}" foi listado no site

Então a mensagem de erro "${MENSAGEM}"
    Conferir a mensagem de erro "${MENSAGEM}"
