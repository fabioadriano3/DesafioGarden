*** Settings ***
Library        AppiumCustomBV
#Library       Zoomba.MobileLibrary
Library        BuiltIn
Library        OperatingSystem
Resource       ../../../../utils/utils.robot
Resource       ../../PageObjects/private/home_private_page.robot


*** Variables ***


*** Keywords ***

abro o app
    Abrindo o Device Android gardem

Clico no botao Mygradem
     botao Mygradem

Clico no botao PlantList para ver a lista
     botao PlantList

Clico no botao apple para eslher maça
     botao apple

Clico no botao mais para cadastrar o produto
    botao Cadastrar planta

Clico no botao Voltar para lista 
    botao Voltar para lista  

Clico no botao botao Avocado para esolher abacate
    botao Avocado


Clico no botao Beet
    botao Beet

validar que foi incluido BeetMyGarde
   incluido BeetMyGarde


validar que foi incluido appleMyGarde
    incluido appleMyGarde

