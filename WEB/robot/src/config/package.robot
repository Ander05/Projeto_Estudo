*** Settings ***
# pip install --upgrade robotframework-seleniumlibrary
# pip install robotframework-faker
# pip install robotframework-requests
# pip install robotframework-debuglibrary
Library    SeleniumLibrary    screenshot_root_directory=${EXECDIR}${/}WEB${/}logs    timeout=60s
Library    FakerLibrary       locale=pt_BR    
Library    RequestsLibrary
Library    DebugLibrary
Library    OperatingSystem    # Não precisa Instalar
Library    Process            # Não precisa Instalar
Library    Collections        # Não precisa Instalar
Library    DateTime           # Não precisa Instalar
Library    String             # Não precisa Instalar
Library    base64

##########################################################################
#    Resources    #
##########################################################################
Resource    hooks.robot
Resource    

##########################################################################
#    Keywords    #
##########################################################################
Resource        ../auto/keywords/keywords.robot