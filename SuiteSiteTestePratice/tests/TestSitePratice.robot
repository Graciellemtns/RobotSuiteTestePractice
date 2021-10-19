*** Settings ***
Resource          ../resource/Resource.robot
Test Setup        Abrir navegador
Test Teardown     Fechar navegador

### SETUP ele roda keyword antes da suite ou de um Teste
### TEARDOWN ele roda keyword depois de um suite ou de um teste

*** Test Case ***
Caso de Teste 01: Pesquisar produto existente
    Acessar a pagina home do site
  #  Digitar o nome do produto "Blouse" no campo Pesquisar
  #  Clicar no botão Pesquisar
  #  Conferir se o produto "Blouse" foi listado no site

#Caso de Teste 02: Pesquisar produto não existente
  #  Acessar a pagina home do site
  #  Digitar o nome do produto "itemNãoExistente" no campo Pesquisar
  #  Clicar no botão Pesquisar
  #  Conferir a mensagem de erro "No results were found for your search "itemNãoExistente""

#***KeyWords***
