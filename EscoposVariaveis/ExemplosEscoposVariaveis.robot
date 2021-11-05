*** Settings ***
Documentation     Exemplo de escopo de variaveis: GLOBAIS, SUITE , TESTE (test case) e LOCAL (keywords)
Library    String

*** Variable ***
${GLOBAL_INSTANCIADA}     Minha variavel GLOBAL_INSTANCIADA foi instanciada para a suite


*** Test Case ***
Caso de teste exemplo 01
    Uma keyword qualquer 01
    Uma keyword qualquer 02

Caso de teste exemplo 02
    Uma keyword qualquer 02
    Uma keyword qualquer 03

Caso de teste exemplo 03
    Uma keyword qualquer 04


*** Keywords ***
Uma keyword qualquer 01
    ${GLOBAL_CRIADA_EM_TEMPO_EXECUCAO}   Generate Random String


    #A variavel "global" pode ser utilizada por suites em execução (quando set global, ela pode ser utilizada em qualquer lugar do teste e em qualquer suite)
    Set Global Variable     ${GLOBAL_CRIADA_EM_TEMPO_EXECUCAO}

    #A varial "suite" pode ser utilizada pode ser utilizada somente nos testes da suite em execução
    Set Suite Variable      ${SUITE_CRIADA_EM_TEMPO_EXECUCAO}    Variavel da suites

    #A variavel "test" pode ser utilizada somente em todas as keywords do teste de execução (so pode ser utlizada dentro do teste em que foi criada)
    Set Test Variable     ${TESTE_01}    Variavel do teste 01
    Log     ${TESTE_01}

    #A variavel "local" pode ser utilizada somente na keyword em execução (só pode ser utilizada dentro da keyword que ela foi criada)
    ${LOCAL}    Set Variable    Variavel local da keyword 01

Uma keyword qualquer 02
    ${LOCAL}    Set Variable    Variavel local da keyword 02
    Log    ${LOCAL}
    Log    ${GLOBAL_INSTANCIADA} / ${GLOBAL_CRIADA_EM_TEMPO_EXECUCAO} / ${SUITE_CRIADA_EM_TEMPO_EXECUCAO} / ${LOCAL}

    #A keyword abaixo vai funcionar no Caso de Teste 1 e falhar no Caso de Teste 02
    Log    ${TESTE_01}
