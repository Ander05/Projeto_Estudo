*** Settings ***
Library         SeleniumLibrary    screenshot_root_directory=results    timeout=60s    
Library         FakerLibrary    locale=pt_BR
Library         RequestsLibrary
Library         OperatingSystem
Library         Process
Library         Collections
Library         DateTime
Library         String
Library         base64
# Library    DebugLibrary    # pip install robotframework-debuglibrary
Library         ../utils/keywords.py
Variables       hooks.yml
##########################################################################
#    Resources    #
##########################################################################
Resource        hooks.robot
Resource        ../auto/pages/Rodada/Variables_RodadaSetup.resource
Resource        ../auto/pages/Variables_AGC.resource
Resource        ../auto/pages/Variables_Home.resource
Resource        ../auto/pages/Variables_PCSO.resource
Resource        ../auto/pages/Variables_PVSI.resource
Resource        ../auto/pages/Variables_PVSO.resource
Resource        ../auto/pages/Variables_Setup.resource
Resource        ../auto/pages/Global.resource
##########################################################################
#    Keywords    #
##########################################################################
Resource        ../auto/keywords/Rodada/Keywords_RodadaSetup.robot
Resource        ../auto/keywords/Keywords_Home.robot
Resource        ../auto/keywords/Keywords_AGC.robot
Resource        ../auto/keywords/Keywords_Home.robot
Resource        ../auto/keywords/Keywords_PCSO.robot
Resource        ../auto/keywords/Keywords_PVSI.robot
Resource        ../auto/keywords/Keywords_PVSO.robot
Resource        ../auto/keywords/Keywords_Setup.robot