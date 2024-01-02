*** Settings ***
Resource    ../src/config/package.robot
# Suite Setup       Acessar sistema
Suite Teardown    Close All Browsers
# robot -d ./WEB/logs -i banco .

*** Test Cases ***
caso 01
    [Tags]    banco
    Acessar sistema