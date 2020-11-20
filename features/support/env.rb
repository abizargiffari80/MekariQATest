require 'selenium-webdriver'
require 'capybara/cucumber'
require 'pry'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'rspec/expectations'
require "timeout"

    Capybara.default_driver=:selenium_chrome
    Capybara.app_host='https://sandbox.jurnal.id/'
    Capybara.page.driver.browser.manage.window.maximize