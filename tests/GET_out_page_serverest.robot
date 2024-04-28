*** Settings ***
Resource  ../resources/cadastrar_usuario_serverest.resource
Resource  ../resources/acess_serverest.resource
Resource  ../resources/listar _usuarios.resource
Resource    ../resources/listar_produtos.resource
Resource    ../resources/out _page_serverest.resource

*** Test Cases ***
CT01- logout page
  Step 1 -Acess page creat user ServeRest
  Step 2 - Create New User Full Name
  Step 3 - Create New User Mail
  Step 4- Create New Password
  Step 5- Select ADM
  Step 6- Creat New
  Step 8- Keep out page