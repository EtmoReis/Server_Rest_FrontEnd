*** Settings ***

Library  SeleniumLibrary
Library  RequestsLibrary
library  String
Library  RequestsLibrary
*** Variables ***

${BROWSER}  Firefox
${URL}  https://front.serverest.dev/login
${CADASTRE-SE}  //a[@data-testid='cadastrar'][contains(.,'Cadastre-se')]
${INPUT_NAME}  //input[contains(@name,'nome')]
${INPUT_FULLNAME}  //input[contains(@name,'nome')]
${INPUT_MAIL}     //input[contains(@name,'email')]
${IMPUT_PASSWORD}  //input[contains(@name,'password')]

*** Keywords ***
Step 1 -Acess page creat user ServeRest
  Open Browser   url=${URL}  browser=${BROWSER}   
  Wait Until Element Is Visible    locator=${CADASTRE-SE}
  Click Element                    locator=${CADASTRE-SE}
 Step 2 - Create New User Full Name
    ${palavra_randomica}    Generate Random String    length=8    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}
    Set Test Variable       ${FULL_NAME}             M${palavra_randomica} dos Santos
    Log                     ${FULL_NAME}
    Input Text             ${INPUT_FULLNAME}         ${FULL_NAME}
 Step 3 - Create New User Mail
    ${palavra_randomica}    Generate Random String    length=8    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}
    Set Test Variable       ${MAIL}             ${palavra_randomica}@gmail.com
    Log                     ${MAIL}
    Input Text             ${INPUT_MAIL}         ${MAIL}

 Step 4- Create New Password
    ${palavra_randomica}    Generate Random String    length=2    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}
    Set Test Variable       ${PASSWORD}               Test@1234
    Log                     ${PASSWORD}
   Input Password     ${IMPUT_PASSWORD}     ${PASSWORD}
   Input Password    ${IMPUT_PASSWORD}      ${PASSWORD} 

 Step 5- Select ADM
  Click Element    locator=//input[contains(@name,'administrador')]
 Step 6- Creat New
   Click Button    locator=//button[@data-testid='cadastrar'][contains(.,'Cadastrar')]
 Step 7- Verify Create user is true
    Wait Until Page Contains    Cadastro realizado com sucesso
    Wait Until Page Contains Element    //div[@class='alert alert-dismissible alert-primary'][contains(.,'×Cadastro realizado com sucesso')]