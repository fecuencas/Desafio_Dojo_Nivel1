#language: pt
#utf-8

@consulta
Funcionalidade: Consultar e Alterar dados de usuario cadastrado
Eu como usuario administrador
Quero consultar os dados dos usuarios cadastrados
Para alterar os dados cadastrais


Cenario: Efetuar consulta
Dado que eu esteja na pagina inicial do site
Quando eu acesso a tela de PMI para consulta
E consulto a lista de funcionarios cadastrados
Então altero o cadastro de um funcionario
