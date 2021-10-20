##Ele eh uma implemnatacao das KeyWords, não eh uma suite de testes
*** Settings ***
Library   SeleniumLibrary


*** Variables ***
${BROWSER}       chrome
${URL}           http://automationpractice.com

*** KeyWords ***
###Setup e TEARDOWN

Abrir navegador
    Open Browser     about:blank     ${BROWSER}

Fechar navegador
    Close Browser

###Passo a Passo
###Ja iremos utilizar a keyword para conferir se o Browser abriu a pagina corretamente, ja que o acessar foi realizado em open browser
Acessar a pagina home do site
    Go to     http://automationpractice.com
    Title Should Be   My Store

Digitar o nome do produto "${PRODUTO}" no campo Pesquisar
    Input Text    name=search_query   ${PRODUTO}

Clicar no botão Pesquisar
    Click Element    name=submit_search

Conferir se o produto "${PRODUTO}" foi listado no site
#Esperar a pagina carregar WAIT
    Wait Until Element Is Visible    css=#center_column > h1
    Title Should Be                  Search - My Store
    Page Should Contain Image        xpath=//*[@src="http://automationpractice.com/img/p/7/7-home_default.jpg"]
    Page Should Contain Link         xpath=//*[@id="center_column"]//a[@class="product-name"][contains(text(),"${PRODUTO}")]
