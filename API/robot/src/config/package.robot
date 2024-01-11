*** Settings ***
# pip install robotframework-faker
# pip install robotframework-requests
# pip install -U robotframework-jsonlibrary
Library    FakerLibrary    
Library    RequestsLibrary
Library    JSONLibrary
Library    String             # Não precisa Instalar

##########################################################################
#    Resources    #
##########################################################################
Resource     hooks.robot
Resource    ../auto/pages/variables.resource

# Variables    hooks.yml

##########################################################################
#    Keywords    #
##########################################################################
Resource    ../auto/keywords/keywords.robot