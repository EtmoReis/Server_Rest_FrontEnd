*** Settings ***

Library  SeleniumLibrary
Library  RequestsLibrary
library  String
Library  RequestsLibrary
Resource  ../resources/cadastrar_usuario_serverest.resource
*** Variables ***

${BROWSER}  Firefox
${URL}  https://front.serverest.dev/login
${CADASTRE-SE}  //a[@data-testid='cadastrar'][contains(.,'Cadastre-se')]
${INPUT_NAME}  //input[contains(@name,'nome')]
${INPUT_FULLNAME}  //input[contains(@name,'nome')]
${INPUT_MAIL}     //input[contains(@name,'email')]
${IMPUT_PASSWORD}  //input[contains(@name,'password')]
${file_path}    C:\\Users\\etmom\\Desktop\\Nova pasta\\ps5.png
*** Keywords ***
Step 7- Acess page a new Product 
  Wait Until Page Contains Element    //a[@data-testid='cadastrar-produtos'][contains(.,'Cadastrar Produtos')]
  Click Element                      //a[@data-testid='cadastrar-produtos'][contains(.,'Cadastrar Produtos')]
  
Step 8- Input information Product
 
  Input Text    locator=//input[contains(@name,'nome')]                                    text=Play Station 5 ${FULLNAME}
  Input Text    locator=//input[contains(@name,'price')]                                   text=5500
  Input Text    locator=//textarea[contains(@name,'description')]                          text=Este PlayStation 5 (PS5) é seminovo, mas está em excelente estado e vem na caixa original. Ele oferece gráficos de última geração, desempenho rápido e recursos inovadores. Inclui console PS5, controle sem fio DualSense e todos os cabos necessários.Observação: Como o console é seminovo, a garantia de fábrica pode não estar mais disponível. No entanto, o console foi testado e está funcionando perfeitamente.Contato para compra: [etmo.gmail.com]
  Input Text   locator=//input[contains(@name,'quantity')]                                text=2
  Wait Until Element Is Visible    locator=//input[contains(@name,'imagem')]
 
  Choose File            locator=//input[contains(@name,'imagem')]      file_path=${file_path}

  Double Click Element    locator=//button[@data-testid='cadastarProdutos'][contains(.,'Cadastrar')]
  
  