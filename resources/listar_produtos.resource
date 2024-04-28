*** Settings ***

Library  SeleniumLibrary
Library  RequestsLibrary
library  String
Library  RequestsLibrary
*** Variables ***

*** Keywords ***
 Step 7- Show Product 

  Wait Until Element Is Visible    locator=//a[@data-testid='listar-produtos'][contains(.,'Listar Produtos')]
  Click Element                    locator=//a[@data-testid='listarProdutos'][contains(.,'Listar')]
 Step 8- verify list Product
    Wait Until Page Contains                             Lista dos Produtos
    Wait Until Page Contains Element    //h1[contains(.,'Lista dos Produtos')]
    