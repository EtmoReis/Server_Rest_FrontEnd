*** Settings ***

Library  SeleniumLibrary
Library  RequestsLibrary
library  String
Library  RequestsLibrary
*** Variables ***

*** Keywords ***

 Step 8- Delete user
  Wait Until Element Is Visible    locator=(//button[@type='button'][contains(.,'Excluir')])[1]
  Click Element                    locator=(//button[@type='button'][contains(.,'Excluir')])[1]