#language: pt
#utf-8

@consulta
Funcionalidade: Consultar e Alterar dados de usuario cadastrado
Eu como usuario administrador
Quero consultar os dados dos usuarios cadastrados
Para alterar os dados cadastrais


Cenario: Efetuar login
Dado que eu esteja na pagina inicial do site
Quando eu acesso a tela de PMI para consulta
E alterar os dados do funcionario
Então eu confirmarei a alteração no cadastro
