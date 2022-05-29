*** Settings ***
Test Setup      Set Global Variable  ${testsRootFolder}  ${EXECDIR}

Library     AppiumCustomBV
Library     Zoomba.MobileLibrary
Library     BuiltIn
Library     OperatingSystem
Library     DebugLibrary

Resource    ${EXECDIR}/PLATAFORMAS/MOBILE/Steps/private/home_private_steps.robot

Suite Setup    Set Library Search Order        Zoomba.MobileLibrary

*** Test Cases ***

Validar Inclusão de Plantas
    [Tags]     robot    cadastro
     

     Given abro o app
     When Clico no botao PlantList para ver a lista
     And Clico no botao apple para eslher maça
     And Clico no botao mais para cadastrar o produto
     And Clico no botao Voltar para lista
     
     And Clico no botao Beet
     And Clico no botao mais para cadastrar o produto
     And Clico no botao Voltar para lista 
     And Clico no botao Mygradem
     And validar que foi incluido BeetMyGarde
     And Clico no botao Voltar para lista 
     And validar que foi incluido appleMyGarde
     And Clico no botao Voltar para lista 
     Then Clico no botao Mygradem

   
