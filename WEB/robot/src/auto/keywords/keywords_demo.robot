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
    