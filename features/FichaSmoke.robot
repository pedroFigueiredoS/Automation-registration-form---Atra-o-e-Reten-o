*** Settings ***
Resource         ../resources/base.robot
Library          ../features/libraries/db_library.py     # Importa a biblioteca personalizada de DB
Test Setup       Abrir o navegador
Test Teardown    Fechar navegador

*** Test Cases ***
Cenário 1: Inscrição de sucesso
    [Documentation]    Esse teste tem como objetivo realizar a incrição de um candidato até o final da ficha
    [Tags]             InscriçãoSucesso   
    
    Dado que o usuário preencheu nome completo, email e telefone
    E clicar em continue
    E preenche os dados restantes CPF, RG Sexo, Deficiência, raça, data de nascimento e se possui deficiência
    E clicar em continue
    E preenche os dados de CEP e Numero
    E clicar em continue
    E Espera a pagina carregar
    E clicar em continue
    Então clica em enviar escrição

Cenário 2: Recuperação da Ficha de incrição
    Dado que o usuário preencheu nome completo, email e telefone que já existe
    E clicar em continue
    ## Falta apaenas criar as validações 