Dado(/^que eu esteja na pagina inicial do site$/) do

#Efetuar login no site
  visit 'http://opensource.demo.orangehrmlive.com/'
  fill_in('txtUsername', :with => 'Admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')
end

Quando(/^eu acesso a tela de PMI para cadastro$/) do

#Acessar o item PIM/AddEmployee
  find('#menu_pim_viewPimModule').click
  find('#menu_pim_addEmployee').click
end

Quando(/^digitar os dados para cadastro de funcionario$/) do

#Efetuar cadastro
  fill_in('firstName', :with => 'Alan')
  fill_in('lastName', :with => 'Milles')
  fill_in('employeeId', :with => '1000')
  click_button('btnSave')
end

Então(/^eu efetuarei o cadastro$/) do

#Validar o carregamento da tela de cadastrado
  page.has_content?('Personal Details')
end
