*** Settings ***
Resource  ../resources/acess_serverest.resource

*** Test Cases ***
CT01- ACESSAR ServeRest
  Step 1 -Acess page creat user ServeRest
  Step 2 - Create New User Full Name
  Step 3 - Create New User Mail
  Step 4- Create New Password
  Step 5- Select ADM
  Step 6- Creat New
  Step 7- Verify Create user is true

  