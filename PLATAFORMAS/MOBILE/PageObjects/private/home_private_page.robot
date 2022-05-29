*** Settings ***
Library        AppiumCustomBV
Library        Zoomba.MobileLibrary
# Library           String
Resource        ../../../../UTILS/Utils.robot
Variables       ../../screens/private/home_private_screens.py





*** Variables ***


*** Keywords ***

Abrindo o Device Android gardem
  # Local
   Open Application                     http://localhost:4723/wd/hub    platformName=Android     deviceName=Pravite          app=/Users/resource.frodrigues/Downloads/Teste ABC/sunflower.apk    automatationName=Uiautomatior2    autoGrantPermissions=true    sessionOverride=true   noReset=false    newCommandTimeout=10000




botao Mygradem
   
   Wait Until Page Contains Element        ${Mygradem}      40
   Clicar no elemento                      ${Mygradem}
   capture page screenshot


botao PlantList 
   
   Wait Until Page Contains Element        ${PlantList}      40
   Clicar no elemento                      ${PlantList}
   capture page screenshot

botao apple
   Wait Until Page Contains Element        ${apple}      40
   Clicar no elemento                      ${apple}
   capture page screenshot 
    

botao Cadastrar planta
   Wait Until Page Contains Element        ${ClicarNoMais}      40
   Clicar no elemento                      ${ClicarNoMais}
   capture page screenshot 

botao Voltar para lista
  
   Wait Until Page Contains Element        ${btVoltar}      30
   Clicar no elemento                      ${btVoltar}
   capture page screenshot 

botao Avocado
   Wait Until Page Contains Element        ${Avocado}      40
   Clicar no elemento                      ${Avocado}
   capture page screenshot 



botao Beet
   Wait Until Page Contains Element        ${Beet}      40
   Clicar no elemento                      ${Beet}
   capture page screenshot 

incluido BeetMyGarde
   Wait Until Page Contains Element        ${BeetMyGarde}      40
   Element Text Should Be                  ${BeetMyGarde}     Beet
   Clicar no elemento                      ${BeetMyGarde}
   capture page screenshot 
   
   

incluido appleMyGarde
   Wait Until Page Contains Element        ${appleMyGarde}      40
   Element Text Should Be                  ${appleMyGarde}     Apple
   Clicar no elemento                      ${appleMyGarde}
   capture page screenshot 
   
   