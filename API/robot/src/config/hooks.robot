*** Settings ***
Documentation       Aqui estarão presentes todos arquivos para inicialização e finalização de testes
Resource            package.robot

*** Keywords ***
Gerando Dados
    ${gerar_pessoa}
    ...    Create Dictionary    
    ...    acao=gerar_pessoa
    ...    pontuacao=N
    ...    sexo=H
    ...    txt_qtde=1
    
    ${Request_Pessoa}
    ...    POST
    ...    url=https://www.4devs.com.br/ferramentas_online.php
    ...    data=${gerar_pessoa}
    
    ${PessoaGerada}    Set Variable    ${Request_Pessoa.json()[0]}
    Set Global Variable    ${PessoaGerada}


    #### Para chamar os dados basta usar os dados abaixo no input
    # ${PessoaGerada}[nome]        Nome Completo
    # ${PessoaGerada}[mae]         Nome da Mãe
    # ${PessoaGerada}[cpf]         CPF
    # ${PessoaGerada}[rg]          RG
    # ${PessoaGerada}[data_nasc]   Data de Nascimento
    # ${PessoaGerada}[email]       E-mail
    # ${PessoaGerada}[cep]         CEP
    # ${PessoaGerada}[numero]      Nr de Residencia

    # Log    ${Request_Pessoa.json()[0]['nome']}



Extraindo_rodada
    ${HEADERS}    Create Dictionary    Authorization=Basic Z2RlbWJhY2tlbmRzZXJ2aWNlVXNlckludGVybmFsOlJTeTAyMThX

    ${dados_rodada}    GET
    ...    url=https://dgdem-backend-service.demanda-abastecimento.grupoboticario.digital/api/round/current
    ...    headers=${HEADERS}
    ...    expected_status=200
    ...    msg=Serviço fora do ar

    ${INICIO}    Convert Date    ${dados_rodada.json()["startDate"]}
    ...    result_format=%d/%m/%Y
    ${FIM}    Convert Date    ${dados_rodada.json()["endDate"]}
    ...    result_format=%d/%m/%Y
    
    ${nr_rodada_be}    Catenate    Rodada:    ${dados_rodada.json()["round"]}
    ${dt_rodada_be}    Catenate    ${INICIO}     a    ${FIM}
    
    Set Global Variable    ${nr_rodada_be}
    Set Global Variable    ${dt_rodada_be}
