*** Settings ***
Documentation     Exemplo de uso de variaveis como argumentos em Keywords
Library    String

*** Variables ***
&{PESSOA}          nome=May    sobrenome=Fernandes     email=timaochato@naoparadechorar.com      idade=7     sexo=timaochato


*** Test Cases ***
Caso de teste de exemplo 01
    Uma keyword qualquer 01
    Customizacao do email

*** Keywords ***
Uma keyword qualquer 01
    Uma subkeyword com argumentos     ${PESSOA.nome}  ${PESSOA.email}
    ${MENSAGEM_ALERTA}     Uma subkeyword com retorno     ${PESSOA.nome}      ${PESSOA.idade}
    Log    ${MENSAGEM_ALERTA}

Uma subkeyword com argumentos
    [Arguments]   ${NOME_USUARIO}     ${EMAIL_USUARIO}
    Log    Nome do usuário: ${NOME_USUARIO}
    Log    Email: ${EMAIL_USUARIO}


Uma subkeyword com retorno
    [Arguments]   ${NOME_USUARIO}   ${IDADE_USUARIO}
    ${MENSAGEM}   Set Variable If    ${IDADE_USUARIO}<18    Não autorizado! O usuário ${NOME_USUARIO} é menor de idade!
    [return]      ${MENSAGEM}

Customizacao do email
    Criacao do Email      ${PESSOA.nome}    ${PESSOA.sobrenome}

Criacao do Email
    [Arguments]     ${NOME}     ${SOBRENOME}
    ${ALEATORIO}      Generate Random String
    Log     email customizado: ${NOME}${SOBRENOME}${ALEATORIO}@deucerto.com
