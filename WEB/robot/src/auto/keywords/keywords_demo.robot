*** Settings ***
Resource    ../../config/package.robot


*** Keywords ***
Preencher dados - Opção "Register"
    Validar Presença    //h1

    # Selecionando Radio Button
    Select Radio Button       group_name=radiooptions    value=FeMale

    # Selecionando ComboBox
    Selecionar Valor Lista    ${demo.cbo_Skills}    XML

    Selecionar Valor Lista    //select[@placeholder="Year"]     1993
    Selecionar Valor Lista    //select[@placeholder="Month"]    February
    Selecionar Valor Lista    //select[@placeholder="Day"]      5
    
    # Selecionar Check List
    Scroll Element Into View    locator=//input[@value="Cricket"]
    Select Checkbox             locator=//input[@value="Cricket"] 
    
    # Input de Imagem
    Scroll Element Into View    locator=//input[@id="imagesrc"]
    Choose File    locator=//input[@id="imagesrc"]
    ...            file_path=${EXECDIR}${/}WEB${/}download${/}Foto.jpeg
    
    Sleep    5s

Clicar nos Alerts - Opção "Switch to - Alerts"
    Go To    https://demo.automationtesting.in/Alerts.html
    ## ACCEPT: Clica Ok. Default.
    ## DISMISS: Clica Cancel.
    ## LEAVE: Deixa o POP-UP em aberto
    
    # ## Validação Alert apenas OK
    # Validar Presença    ${demo.btn_ok}
    # Clicar em           ${demo.btn_ok}
    # Clicar em           ${demo.popup_OK}
    # Alert Should Be Present    text=I am an alert box!    action=DISMISS


    # ## Validação Alert com OK e Cancel
    # Validar Presença    ${demo.btn_OkCancel}
    # Clicar em           ${demo.btn_OkCancel}
    # Clicar em           ${demo.popup_OkCancel}
    # Alert Should Be Present    text=Press a Button !    action=LEAVE
    # Handle Alert    action=DISMISS

    # ## Validação Inserir dados no alert
    Validar Presença    ${demo.btn_text}
    Clicar em           ${demo.btn_text}
    Clicar em           ${demo.popup_text}
    Alert Should Be Present    text=Please enter your name    action=LEAVE
    Input Text Into Alert      text=Mi-Mi-Mi    action=ACCEPT
    
    

    Sleep    5s