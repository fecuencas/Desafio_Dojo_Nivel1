Quando(/^efetuar a consulta de todos os cadastros de funcionarios$/) do

#clicar no botão para consultar todos os usuarios
  click_button('searchBtn')

end

Então(/^eu efetuarei a exclusão de todos$/) do

#selecionar e deletar todos os cadastros
  check('ohrmList_chkSelectAll')
  find('#btnDelete').click
  click_button('dialogDeleteBtn')
  page.has_content?('Successfully Deleted')

end
