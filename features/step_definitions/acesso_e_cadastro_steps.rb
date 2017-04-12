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
  fill_in('middleName', :with => 'Della')
  fill_in('lastName', :with => 'Milles')
  #@id = find(:id, 'employeeId').value
  #puts @id
  #find(:xpath, '//*[@id="photofile"]').click
  #puts 'C:\Users\Inmetrics\desafio\features\images.jpg'.click
  fill_in('employeeId', :with => '1000')
  check('chkLogin')
  fill_in('user_name', :with => 'Aladem')
  fill_in('user_password', :with => 'alan1234')
  fill_in('re_password', :with => 'alan1234')
  select('Enabled', :from => 'status')
  click_button('btnSave')

end

Então(/^eu efetuarei o cadastro$/) do

#Validar o carregamento da tela de cadastrado
  assert_text('Personal Details')

end
