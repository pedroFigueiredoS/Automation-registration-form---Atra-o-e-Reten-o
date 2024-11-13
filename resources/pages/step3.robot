*** Settings ***
Documentation    PageInspect da tela Step 3

*** Variables ***

${ELEMENT_CEP}                       xpath=//label[@for='CEP'][contains(.,'CEP')]
${IPT_CEP}                           xpath=(//input[contains(@type,'text')])[1]
${IPT_NUMBER_HOUSE}                  xpath=(//input[contains(@type,'text')])[5]