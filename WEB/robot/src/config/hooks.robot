*** Settings ***
Documentation       Aqui estarão presentes todos arquivos para inicialização e finalização de testes
Resource            package.robot

*** Keywords ***
Acessar sistema
    Set Global Variable    ${downloadDir}    ${EXECDIR}${/}WEB${/}download

    ${chromeOptions}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    ${prefs}            Create Dictionary    download.default_directory=${downloadDir}

    Call Method    ${chromeOptions}    add_experimental_option    prefs    ${prefs}
    Call Method    ${chromeOptions}    add_argument    --disable-gpu
    Call Method    ${chromeOptions}    add_argument    --start-maximized
    # Call Method    ${chromeOptions}    add_argument    --headless
    # Call Method    ${chromeOptions}    add_argument    --window-size\=640,480

    Open Browser    url=${Demo_Site.url}
    ...    browser=Chrome
    ...    options=${chromeOptions}

Validar Presença
    [Arguments]    ${locator}
    Wait Until Element Is Enabled    locator=${locator}
    Scroll Element Into View         locator=${locator}
    Element Should Be Visible        locator=${locator}

Preencher Campo
    [Arguments]    ${locator}    ${text}
    Scroll Element Into View         locator=${locator}
    Wait Until Element Is Visible    locator=${locator}
    Input Text                       locator=${locator}    text=${text}

Clicar em
    [Arguments]    ${locator}
    Scroll Element Into View         ${locator}
    Wait Until Element Is Visible    ${locator}
    Click Element                    ${locator}

Selecionar Valor Lista
    [Arguments]    ${locator}    ${value}
    Scroll Element Into View         ${locator}
    Wait Until Element Is Visible    ${locator}
    Select From List By Value        ${locator}    ${value}