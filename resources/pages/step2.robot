*** Settings ***
Documentation    PageInspect da tela Step 2

*** Variables ***

${ELEMENT_CPF}              xpath=//label[@for='CPF'][contains(.,'CPF')]
${IPT_CPF}                  xpath=(//input[contains(@type,'text')])[4]
${IPT_RG}                   xpath=(//input[contains(@type,'text')])[5]
${CHECK_MAN}                xpath=(//span[contains(@class,'insp-radio__checkmark')])[2]
${CHECK_HOMAN}              xpath=(//span[contains(@class,'insp-radio__checkmark')])[2]
${DROP_SELECT_RACE}         xpath=//div[@class='insp-dropdown__select'][contains(.,'Selecionar')]
${ELEMENT_AMARELA}          xpath=//div[@class='insp-dropdown__item'][contains(.,'Amarela')]
${IPT_BIRTHDAY}             xpath=(//input[contains(@type,'text')])[6]
${IPT_NAME_MATHER}          xpath=(//input[contains(@type,'text')])[7]