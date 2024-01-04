*** Settings ***
Resource    ../src/config/package.robot
Suite Setup    Run Keywords      
...    Acessar sistema

Suite Teardown    Close All Browsers
# robot -d ./WEB/logs -i Demo .

*** Test Cases ***
# caso 01
#     [Tags]    Demo
#     Preencher dados - Opção "Register"

Caso 02
    [Tags]    Demo
    Clicar nos Alerts - Opção "Switch to - Alerts"