*** Variables ***

*** Settings ***

Resource         keywords/kws_ficha_resouces.robot
Resource         pages/step1.robot
Resource         pages/step2.robot
Resource         pages/step3.robot
Resource         pages/step4.robot
Resource         pages/step5.robot
Library          SeleniumLibrary
Library          FakerLibrary    locale=pt_BR
Library          DatabaseLibrary    # Importa a biblioteca para banco de dados   