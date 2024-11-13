*** Settings ***
Resource         ../base.robot
Library          ../features/libraries/db_library.py
Library          C:\Users\suporte\Desktop\robotFrameWork\features\libraries\db_library.py


*** Variables ***
${URLlogin}    https://fichainscricao-dev.inspirali.com/concurso/15505
#${DBQuery}     SELECT * FROM suas_tabelas WHERE campo = 'valor';  # Substitua pela sua query

*** Keywords ***
Abrir o navegador
    Open Browser    ${URLlogin}    Chrome
    Maximize Browser Window

Fechar navegador
    Close Browser

Dado que o usuário preencheu nome completo, email e telefone
    ${name}=    FakerLibrary.name    # Gera um primeiro nome aleatório
    ${email}=   FakerLibrary.Email         # Gera um e-mail aleatório
    ${phone}=   FakerLibrary.Phone Number  # Gera um número de telefone aleatório

    Wait Until Element Is Visible     xpath=//div[@class='registration-form__title'][contains(.,'Formulário de Inscrição')]
    Input Text                        ${IPT_NAME}    ${name}
    Input Text                        ${IPT_EMAIL}   ${email}
    Input Text                        ${IPT_PHONE}     12981650685
    
E clicar em continue 
    Click Button                    ${CLICK_NEXT} 
    Sleep    1s

E preenche os dados restantes CPF, RG Sexo, Deficiência, raça, data de nascimento e se possui deficiência
    ${nameMother}=    FakerLibrary.name    # Gera um primeiro nome aleatório
    
    Wait Until Element Is Visible    ${ELEMENT_CPF}
    Input Text                       ${IPT_CPF}                    46534171805
    Input Text                       ${IPT_RG}                     39239534
    Click Element                    ${CHECK_MAN}
    Click Element                    ${DROP_SELECT_RACE}
    Click Element                    ${ELEMENT_AMARELA} 
    Input Text                       ${IPT_BIRTHDAY}               01031999
    Input Text                       ${IPT_NAME_MATHER}            ${nameMother}
E preenche os dados de CEP e Numero
    ${RandomNumber}    FakerLibrary.Random Number
    
    Wait Until Element Is Visible    ${ELEMENT_CEP} 
    Input Text                       ${IPT_cep}                    02251000
    Input Text                       ${IPT_NUMBER_HOUSE}           ${RandomNumber}
    Sleep    1s
E Espera a pagina carregar
    Wait Until Element Is Visible    ${ELEMENT_TEXT_CAMPUS}
    Click Element                    ${SELECT_DISCOUNT_TRUE}
    Click Element                    ${SELECT_DISCOUNT_FALSE}
Então clica em enviar escrição 
    Wait Until Element Is Visible    ${ELEMENT_PERSONAL_DATA}
    Click Button                     ${CLICK_SEND_ENROLLMENT}

# Após finalizar o teste
#     ${query_result}=    Execute Query    ${DBQuery}  # Executa a query no banco de dados
#     Log    ${query_result}  # Loga o resultado da query

