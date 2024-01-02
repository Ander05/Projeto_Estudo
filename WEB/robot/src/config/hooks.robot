*** Settings ***
Documentation       Aqui estarão presentes todos arquivos para inicialização e finalização de testes
Resource            package.robot

*** Keywords ***
Acessar sistema
    ${downloadDir}=    Set Variable     ${EXECDIR}${/}WEB${/}download

    ${chromeOptions}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    ${prefs}            Create Dictionary    download.default_directory=${downloadDir}

    Call Method    ${chromeOptions}    add_experimental_option    prefs    ${prefs}
    Call Method    ${chromeOptions}    add_argument    --disable-gpu
    # Call Method    ${chromeOptions}    add_argument    --start-maximized
    # Call Method    ${chromeOptions}    add_argument    --headless
    Call Method    ${chromeOptions}    add_argument    --window-size\=640,480

    Open Browser    url=https://www.google.com/
    ...    browser=Chrome
    ...    options=${chromeOptions}
    
    Capture Page Screenshot    filename=test.png

    Log    ${downloadDir}