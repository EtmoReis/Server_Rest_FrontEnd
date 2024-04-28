*** Settings ***

Library  SeleniumLibrary
Library  RequestsLibrary
library  String
Library  RequestsLibrary
*** Variables ***

*** Keywords ***
 Step 12- Show user 
  
  Click Element        locator=//a[contains(.,'Home')]
  

  
  Wait Until Element Is Visible    locator=//a[@data-testid='listarUsuarios'][contains(.,'Listar')]
  Click Element                    locator=//a[@data-testid='listarUsuarios'][contains(.,'Listar')]
 Step 13- verify list user 
    Wait Until Page Contains                             Lista dos usuários
    Wait Until Page Contains Element    //h1[contains(.,'Lista dos usuários')]
     Click Element        locator=//a[contains(.,'Home')]