*** Settings ***
Resource         ../resource/CadastroUsuarioResource.robot
Test Setup       Abrir navegador
Test Teardown    Fechar navegador

*** Test Case ***
Cenário: Acessar o site, acessar funcionalidade para se cadastrar, inserir todos os dados obrigatórios e cadastrar o usuário
    Dado que acesse o site Automation Practice
    E clique para se cadastrar
    E digite o endereço de e-mail para iniciar o cadastro
    E clique em Create an account
    E preencha os dados do formulário de cadastro
    Quando clicar em Register
    Então o usuário será criado
