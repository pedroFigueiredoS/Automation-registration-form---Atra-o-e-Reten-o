*** Settings ***
Documentation    PageInspect da tela Step 3

*** Variables ***

${ELEMENT_TEXT_CAMPUS}                           xpath=//label[@for='Campus em que você vai estudar'][contains(.,'Campus em que você vai estudar')]
${SELECT_DISCOUNT_TRUE}                          xpath=(//span[contains(@class,'insp-radio__checkmark')])[1]
${SELECT_DISCOUNT_FALSE}                         xpath=(//span[contains(@class,'insp-radio__checkmark')])[2]