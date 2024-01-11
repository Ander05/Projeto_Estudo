*** Settings ***
Resource    ../src/config/package.robot
# robot -d ./API/logs -i api .

*** Test Cases ***
Caso 01
    [Tags]    api
    Gerando Dados
    verificando dados