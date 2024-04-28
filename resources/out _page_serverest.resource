*** Settings ***

Library  SeleniumLibrary
Library  RequestsLibrary
library  String
Library  RequestsLibrary
Library    Process
*** Variables ***

*** Keywords ***
Step 8- Keep out page
  Wait Until Element Is Visible    locator=//a[@data-testid='relatorios'][contains(.,'Ver')]
  Click Element                    locator=//a[@data-testid='relatorios'][contains(.,'Ver')]
 
  Wait Until Page Contains    text=Em construção aguarde
  Sleep    5s
  Click Element         locator=//a[@data-testid='home'][contains(.,'Home')]
  Sleep    5s
  Click Element    locator=//button[@data-testid='logout'][contains(.,'Logout')]
  Sleep    5s

  Close Browser