Quando(/^eu acesso a tela de PMI para consulta$/) do
  find('#menu_pim_viewPimModule').click
  find('#menu_pim_viewEmployeeList').click
  fill_in('empsearch_employee_name_empName', :with => 'Alan Delon')
  click_button('searchBtn')
  find_link('1000').click
  page.has_content?('Personal Details')

end

Quando(/^alterar os dados do funcionario$/) do
  click_button('btnSave')
  fill_in('personal_txtEmpMiddleName', :with => 'Rocha')
  select('Single', :from => 'personal_cmbMarital')
  choose('personal_optGender_1')
  select('Brazilian', :from => 'personal_cmbNation')
  click_button('btnSave')
end

Então(/^eu confirmarei a alteração no cadastro$/) do
  page.has_content?('Successfully Saved')
  find('#menu_pim_viewPimModule').click
  find('#menu_pim_viewEmployeeList').click
  fill_in('empsearch_id', :with => '1000')
  check('ohrmList_chkSelectAll')
  find('#btnDelete').click
  click_button('dialogDeleteBtn')
  page.has_content?('Successfully Deleted')

end
