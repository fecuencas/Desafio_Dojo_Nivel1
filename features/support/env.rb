require 'cucumber'
require 'rspec'
require 'rake'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'pry'



#Configurando o driver capybara
Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

#Setando a configuração do driver como padrão
Capybara.default_driver = :selenium

#timeout padrão na execução
Capybara.default_driver = :selenium

#Maximizar a tela ao iniciar
Capybara.page.driver.browser.manage.window.maximize
