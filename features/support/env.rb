# frozen_string_literal: true

require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'webdrivers'
require 'site_prism'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 10
  config.app_host = 'https://www.sky.com.br'
  Capybara.current_session.driver.browser.manage.window.maximize
end
