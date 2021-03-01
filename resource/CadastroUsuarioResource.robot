*** Settings ***
Library  SeleniumLibrary
Library         String

*** Variables ***
${BROWSER}      chrome
${URL}          http://automationpractice.com

#Tipo Lista
@{TELEFONE}    33517788    99914725

#Tipo Dicionário
&{PESSOA}    firstName=Leonardo    lastName=Medeiros    password=123456teste   company=Mercado Eletronico    address=teste endereço 123    city=São Paulo    zipPostal=12345   addInfo=teste mercado eletronico


*** Keywords ***
#### Setup e Teardown ####

Abrir navegador
    Open Browser    ${URL}   ${BROWSER}
    Maximize Browser Window

Fechar navegador
    Close Browser

### passo-a-passo # Caso de teste 1
Dado que acesse o site Automation Practice
  Title Should Be   My Store

E clique para se cadastrar
  Click Element    xpath=//div//a[@class='login']

E digite o endereço de e-mail para iniciar o cadastro
  ${EMAIL_ALEATORIO}    Generate Random String
  Input Text    id=email_create    ${EMAIL_ALEATORIO}@gmail.com

E clique em Create an account
  Click Button    id=SubmitCreate


E preencha os dados do formulário de cadastro
   Wait Until Element Is Visible    id=id_gender1
   Click Element                    id=id_gender1
   Input Text                       id=customer_firstname    ${PESSOA.firstName}
   Input Text                       id=customer_lastname     ${PESSOA.lastName}
   Input Text                       id=passwd                ${PESSOA.password}
   Select From List By Value        id=days      5
   Select From List By Index        id=months    10
   Select From List By Index        id=years     22
   Scroll Element Into View         id=id_state
   Input Text                       id=company                ${PESSOA.company}
   Input Text                       id=address1               ${PESSOA.address}
   Input Text                       id=address2               ${PESSOA.address}
   Input Text                       id=city                   ${PESSOA.city}
   Select From List By Index        id=id_state    10
   Input Text                       id=postcode               ${PESSOA.zipPostal}
   Input Text                       id=other                  ${PESSOA.addInfo}
   Input Text                       id=phone                  ${TELEFONE[0]}
   Input Text                       id=phone_mobile           ${TELEFONE[1]}


Quando clicar em Register
    Click Element    id=submitAccount

Então o usuário será criado
     Element Text Should Be    xpath=//div[@class='header_user_info']//a//span    Leonardo Medeiros
