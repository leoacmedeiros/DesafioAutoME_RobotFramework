# Instalação e Inicialização

Fiz um projeto de cadastro no site AutomationPractice com as tecnologias: Python38-32 e Robot Framework. Obs: Esse é apenas um projeto a mais que eu fiz (plus), o projeto principal é o feito em Java que está no meu GitHub. 

Abaixo um tutorial para instalar o python o robot e rodar os scripts de testes via cmd. 


1. Instalar o Python 
2. Baixar a IDE Atom
3. Instalar o Robot Framework via cmd >> pip install robotframework
4. Instalar as bibliotecas externas >> pip install --upgrade robotframework-seleniumlibrary e pip install robotframework-requests
5. Baixar os drivers: geckodriver e chromedriver.exe (Colocar os drivers na pasta: AppData\Local\Programs\Python\Python38-32\Scripts)
6. pip freeze - listar libraries do python
7. pip install -U robotframework - Atualizar libraries
8. Executar o teste: robot -d .\results tests\CadastroUsuario.robot
9. Substituir navegador: robot -v BROWSER:chrome tests\TestSitePractice.robot


Procurar atualizações
https://pypi.org


