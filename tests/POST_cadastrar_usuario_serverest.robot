*** Settings ***
Resource  ../resources/cadastrar_usuario_serverest.resource
Resource  ../resources/acess_serverest.resource

*** Test Cases ***
CT01- ACESSAR ServeRest
  Step 1 -Acess page creat user ServeRest
  Step 2 - Create New User Full Name
  Step 3 - Create New User Mail
  Step 4- Create New Password
  Step 5- Select ADM
  Step 6- Creat New
  Step 7 - Create New User Full Name
  Step 8 - Create New User Mail
  Step 9- Create New Password
  Step 10- Select ADM
  Step 11- Creat New
  Step 12- Verify Create user is true