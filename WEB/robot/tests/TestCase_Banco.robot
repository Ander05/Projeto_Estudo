*** Settings ***
Resource    ../src/config/package.robot
Suite Setup    Run Keywords      
...    Acessar sistema

Suite Teardown    Close All Browsers
# robot -d ./WEB/logs -i banco .

*** Test Cases ***
caso 01
    [Tags]    banco
    Realizar login
