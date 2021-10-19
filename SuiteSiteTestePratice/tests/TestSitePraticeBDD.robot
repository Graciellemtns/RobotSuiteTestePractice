*** Settings ***
Library   Selenium

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
    Quando eu pesquisar pelo produto "produtoNãoExistente"
    Então a mensagem de erro "No results were found for your search "itemNãoExistente""

*** KeyWords ***
