*** Settings ***
Resource    ../../config/package.robot

*** Keywords ***
Realizar login
    Validar Presença    locator=${banco.logoInicial}
    Preencher Campo     locator=${banco.cmpLogin}     text=${dados_banco.uid}
    Preencher Campo     locator=${banco.cmpSenha}     text=${dados_banco.passw}
    Clicar em           locator=${banco.btnLogin}