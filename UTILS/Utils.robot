*** Settings ***
Library      AppiumCustomBV
#Library     Zoomba.MobileLibrary
Library      BuiltIn
Library      OperatingSystem
Library      String
Library      BuiltIn
Library      JSONLibrary

Library      Screenshot 
Library      RequestsLibrary



*** Keywords ***
Clicar no elemento
    [Arguments]                         ${elemento}     ${timeout}=20
    Wait Until Element Is Enabled    ${elemento}     ${timeout}      O elemento ${elemento} não apareceu em ${timeout} segundos
    Click Element                       ${elemento}
    #capture page screenshot


Aguardar Elemento
    [Arguments]                         ${elemento}     ${timeout}=30
    Wait Until Element Is Enabled    ${elemento}     ${timeout}      O elemento ${elemento} não foi exibido dentro de ${timeout} segundos

Clicar em Tentar Novamente
    ${status}=    Run Keyword And Return Status     Wait For And Click Element    "//*[contains(@label, 'Tentar novamente')]"        30


Executar metodo get
    [Arguments]     ${url_end_point}    ${parametros}   ${expect_Status}=any   ${mensagem}=None     ${kwargs}=None


    ${response}=   Run Keyword If    ${expect_Status}==any
    ...   GET     ${url_end_point}   ${parametros}    verify=${False}
    ...   ELSE    GET    ${url_end_point}   ${parametros}    ${expect_Status}   ${mensagem}   verify=${False}

    [Return]    ${response}



Carregar dado de conta a partir do json
# funcionalidade = qual funcionalidade está associada ao testes
# tipo_cliente = id do cliente no arquivo json
# dado = qual dado deve ser retornado ex. cpf, vai retornar o numero do cpf
    [Arguments]     ${funcionalidade}      ${tipo_cliente}      ${dado}

#    caminho relativo do arquivo json
    &{dict}=   Load JSON From File   ${EXECDIR}/MASSA/${funcionalidade}/Massa.json
    ${dados_retornados_json}=    Set Variable   ${dict}[${tipo_cliente}][0][${dado}]
    Set Test Variable            ${dados_retornados_json}
    [Return]   ${dict}[${tipo_cliente}][0][${dado}]

Swipe from element
    [Arguments]                          ${element}     ${count}
    ${coordinates}   Get Element Location    ${element}
    ${start_x}   Get From Dictionary    ${coordinates}   x
    ${start_y}   Get From Dictionary    ${coordinates}   y
    ${width}	Get Window width
    ${height}	Get Window height
    ${offset_x} =    Evaluate    (((${width}-${start_x})/2)/${width})*100
    ${start_X} =     Evaluate    (${start_x}/${width})*100
    FOR    ${i}    IN RANGE    ${count}
        Swipe By Percent   ${offset_x}  50  ${start_X}  50
        ${i} =        Evaluate    ${i}+1
    END

Swipe from element esquerda
    [Arguments]                          ${element}     ${count}
    ${coordinates}   Get Element Location    ${element}
    ${start_x}   Get From Dictionary    ${coordinates}   x
    ${start_y}   Get From Dictionary    ${coordinates}   y
    ${width}	Get Window width
    ${height}	Get Window height
    ${offset_x} =    Evaluate    (((${width}-${start_x})/2)/${width})*100
    ${start_X} =     Evaluate    (${start_x}/${width})*100
    FOR    ${i}    IN RANGE    ${count}
        Swipe By Percent    ${start_X}  50    ${offset_x}  50
        ${i} =        Evaluate    ${i}+1
    END

Swipe Rigth Until Page Contains Element
    [Arguments]    ${element_reference}     ${element}
    ${coordinates}   Get Element Location    ${element_reference}
    ${start_x}   Get From Dictionary    ${coordinates}   x
    ${start_y}   Get From Dictionary    ${coordinates}   y
    Log to console   ${start_y}

    ${width}	Get Window width
    ${height}	Get Window height
    Log to console   ${height}

    ${offset_y} =    Evaluate    (((${height}-${start_y})/2)/${height})*100
    ${start_Y} =     Evaluate    (${start_y}/${height})*100
    Log to console   ${start_Y}
    ${offset_x} =    Evaluate    (((${width}-${start_x})/2)/${width})*100
    ${start_X} =     Evaluate    (${start_x}/${width})*100
    ${status} =   Run Keyword And Return Status  Wait Until Element Is Enabled  ${element}
    ${count} =   Evaluate   10

    FOR    ${i}    IN RANGE    ${count}
        Exit For Loop If             ${status} == True
            Swipe By Percent   ${offset_x}  ${start_Y}  ${start_X}  ${start_Y}
            ${i} =        Evaluate    ${i}+1
            ${status} =   Run Keyword And Return Status  Wait Until Element Is Enabled  ${element}  
    END
Swipe Left Until Page Contains Element
    [Arguments]    ${element_reference}     ${element}
    ${coordinates}   Get Element Location    ${element_reference}
    ${start_x}   Get From Dictionary    ${coordinates}   x
    ${start_y}   Get From Dictionary    ${coordinates}   y
    ${width}	Get Window width
    ${height}	Get Window height
    ${offset_y} =    Evaluate    (((${height}-${start_y})/2)/${height})*100
    ${start_Y} =     Evaluate    (${start_y}/${height})*100
    ${offset_x} =    Evaluate    (((${width}-${start_x})/2)/${width})*100
    ${start_X} =     Evaluate    (${start_x}/${width})*100
    ${status} =   Run Keyword And Return Status  Wait Until Element Is Enabled  ${element}
    ${count} =   Evaluate   10

    FOR    ${i}    IN RANGE    ${count}
        Exit For Loop If             ${status} == True
            Swipe By Percent   ${start_X}  ${start_Y}  ${offset_x} ${start_Y}
            ${i} =        Evaluate    ${i}+1
            ${status} =   Run Keyword And Return Status  Wait Until Element Is Enabled  ${element}  
    END
