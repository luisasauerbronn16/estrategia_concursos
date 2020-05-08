require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'pry'
require 'rspec/expectations'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    Capybara.page.driver.browser.manage.window.maximize
    Capybara.default_max_wait_time = 20
    Capybara.ignore_hidden_elements = false
end