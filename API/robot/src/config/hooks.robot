*** Settings ***
Documentation       Aqui estarão presentes todos arquivos para inicialização e finalização de testes
Resource            package.robot

*** Keywords ***
Acessar sistema
    ${downloadDir}=    Set Variable    ${EXECDIR}${/}robot${/}Downloads
    Set Global Variable    ${downloadDir}

    ${chromeOptions}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    ${prefs}=    Create Dictionary    download.default_directory=${downloadDir}
    Call Method    ${chromeOptions}    add_experimental_option    prefs    ${prefs}
    Call Method    ${chromeOptions}    add_argument    --disable-gpu
    Call Method    ${chromeOptions}    add_argument    --start-maximized

    Open Browser    url=###SITE###
    ...    browser=Chrome
    ...    options=${chromeOptions}