*** Settings ***
Documentation    PageInspect da tela Step 1

*** Variables ***

${ELEMENT_PERSONAL_DATA}      xpath=//div[@class='registration-summary__header-tile'][contains(.,'Dados pessoais')]
${CLICK_SEND_ENROLLMENT}      xpath=//button[@class='btn btn-primary'][contains(.,'Enviar Inscrição')]