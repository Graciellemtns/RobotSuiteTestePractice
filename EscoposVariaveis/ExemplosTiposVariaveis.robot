*** Settings ***
Documentation     Exemplo de tipos de variaveis: SIMPLES, LISTAS e DICIONARIOS

*** Variables ***

#SIMPLES
${GLOBAL_SIMPLES}       Vamos ver os tipos de variaveis no robot


#Tipo LISTAS
@{FRUTA}               morango    banana    maça    uva    abacaxi

#Tipo DICIONARIO
&{PESSOA}             nome=May Fernandes    email=timaochato@naoparadechorar      idade=7     sexo=timaochato

*** Test Cases ***
Caso de teste de exemplo 01
    Uma keyword qualquer 01

*** Keywords ***
Uma keyword qualquer 01
    #SIMPLES
    Log    ${GLOBAL_SIMPLES}

    #LISTAS
    Log    Tem que ser maça: ${FRUTA[2]} e Essa tem que ser morango: ${FRUTA[0]}

    #DICIONARIO
    Log    Nome: ${Pessoa.nome} e email: ${PESSOA.email}
