*** Settings ***
Documentation    PageInspect da tela Step 1

*** Variables ***

${IPT_NAME}      xpath=(//input[contains(@type,'text')])[1]
${IPT_EMAIL}     xpath=(//input[contains(@type,'text')])[2]
${IPT_PHONE}     xpath=(//input[contains(@type,'text')])[3]
${CLICK_NEXT}    xpath=//button[@class='btn btn-primary'][contains(.,'Continue')]
