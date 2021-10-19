##Ele eh uma implemnatacao das KeyWords, não eh uma suite de testes
*** Settings ***
Library   SeleniumLibrary


*** Variables ***
${BROWSER}       chrome
${URL}           http://automationpractice.com

*** KeyWords ***
###Setup e TEARDOWN

Abrir navegador
    Open Browser     about:blank  ${BROWSER}

Fechar navegador
    Close Browser

###Passo a Passo
###Ja iremos utilizar a keyword para conferir se o Browser abriu a pagina corretamente, ja que o acessar foi realizado em open browser
Acessar a pagina home do site
    Go to     http://automationpractice.com
    Title Should Be   My Store

Digitar o nome do produto "${PRODUTO}" no campo Pesquisar
    Input Text    name=search_query   ${PRODUTO}
