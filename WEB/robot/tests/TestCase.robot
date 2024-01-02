*** Settings ***
Resource    ../src/config/package.robot
Suite Setup       Acessar sistema
Suite Teardown    Close All Browsers
# robot -d ./WEB/logs -i test .

*** Test Cases ***
caso 01
    [Tags]    test
    Acessar sistema