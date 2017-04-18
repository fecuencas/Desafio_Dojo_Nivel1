Quando(/^eu acesso a tela de PMI para consulta$/) do

#Acessar o item PIM/EmployeeList
  find('#menu_pim_viewPimModule').click
  find('#menu_pim_viewEmployeeList').click

end

Quando(/^consulto a lista de funcionarios cadastrados$/) do

#Selecionar um funcionario da lista de funcionarios
  click_button('searchBtn')
  find(:xpath, '//*[@id="resultTable"]/tbody/tr[1]/td[2]').click_link()
  page.has_content?('Personal Details')

end

Então(/^altero o cadastro de um funcionario$/) do

#Alterar dados do funcionario
  click_button('btnSave')
  fill_in('personal_txtEmpFirstName', :with => 'Alterei')
  fill_in('personal_txtEmpMiddleName', :with => 'Você')
  fill_in('personal_txtEmpLastName', :with => 'Para Teste')
  fill_in('personal_txtLicenNo', :with => '69936576159')
  fill_in('personal_txtLicExpDate', :with => '2020-12-31').click
  find(:xpath, '//*[@id="personal_cmbMarital"]/option[2]').click
  #select('Single', :from => 'personal_cmbMarital')
  choose('personal_optGender_1')
  find(:xpath, '//*[@id="personal_cmbNation"]/option[27]').click
  #select('Brazilian', :from => 'personal_cmbNation')
  fill_in('personal_DOB', :with => '1988-11-26')
  click_button('btnSave')
  page.has_content?('Successfully Saved')

end
