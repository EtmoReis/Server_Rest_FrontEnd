*** Settings ***

Library  SeleniumLibrary
Library  RequestsLibrary
library  String
Library  RequestsLibrary
*** Variables ***

*** Keywords ***

 Step 9- Delete Product
   Wait Until Element Is Visible    locator=(//button[@type='button'][contains(.,'Excluir')])[3]        
   Click Element    locator=(//button[@type='button'][contains(.,'Excluir')])[3]        