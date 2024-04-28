*** Settings ***

Library  SeleniumLibrary
Library  RequestsLibrary
library  String
Library  RequestsLibrary
Resource  ../resources/acess_serverest.resource
*** Variables ***
${BROWSER}  Firefox
${URL}  https://front.serverest.dev/login
${INPUT_NAME}  //input[contains(@name,'nome')]
${INPUT_FULLNAME}  //input[contains(@name,'nome')]
${INPUT_MAIL}     //input[contains(@name,'email')]
${IMPUT_PASSWORD}  //input[contains(@name,'password')]
${CADASTRO_BUTTON}  //a[@data-testid='cadastrarUsuarios'][contains(.,'Cadastrar')]
             
*** Keywords ***

 Step 7 - Create New User Full Name
   Wait Until Element Is Visible    locator=${CADASTRO_BUTTON}
   Click Element                    locator=${CADASTRO_BUTTON}
    ${palavra_randomica}    Generate Random String    length=8    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}
    Set Test Variable       ${FULL_NAME}             M${palavra_randomica} dos Santos
    Log                     ${FULL_NAME}
    Input Text     ${INPUT_FULLNAME}         ${FULL_NAME}
 Step 8- Create New User Mail
    ${palavra_randomica}    Generate Random String    length=8    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}
    Set Test Variable       ${MAIL}             ${palavra_randomica}@gmail.com
    Log                     ${MAIL}
    Input Text             ${INPUT_MAIL}         ${MAIL}

 Step 9- Create New Password
    ${palavra_randomica}    Generate Random String    length=2    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}
    Set Test Variable       ${PASSWORD}               Test@1234
    Log                     ${PASSWORD}
   Input Password     ${IMPUT_PASSWORD}     ${PASSWORD}
   Input Password    ${IMPUT_PASSWORD}      ${PASSWORD} 
 Step 10- Select ADM
  Click Element    locator=//input[contains(@name,'administrador')]
 Step 11- Creat New
   Click Element    locator=//button[@data-testid='cadastrarUsuario'][contains(.,'Cadastrar')]
   

Step 12- Verify Create user is true
   
    Wait Until Page Contains Element    //td[contains(.,'Mdbvclgbm dos Santos')]