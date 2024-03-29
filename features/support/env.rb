require 'capybara/cucumber'
require 'selenium-webdriver'  
require 'site_prism'
#require 'faker'
#require_relative 'page_helper.rb'
#require_relative 'helper.rb'
#require 'net/https'
#require 'net/http'
#require 'date'
#require 'httparty'
#require 'byebug'
#require 'cpf_faker'

# BROWSER = ENV['BROWSER']
# AMBIENTE = ENV['AMBIENTE']
BROWSER = 'firefox'
AMBIENTE = 'alpha'
# EMPRESA = ENV['EMPRESA']
# USUARIO = ENV['USUARIO']
# SENHA = ENV['SENHA']
# VERSAO = ENV['VERSAO']


CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")


# World (PageObjects)
# World(Helper)
Capybara.register_driver :selenium do |app|



    if BROWSER.eql?('chrome')
        Capybara::Selenium::Driver.new(app, :browser => :chrome)
    elsif BROWSER.eql?('chrome_headless')
        Capybara::Selenium::Driver.new(app, :browser => :chrome,
        desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
            'chromeOptions' => {'args' => ['--headless', 'disabled-gpu']}
        )
        
        )
    elsif BROWSER.eql?('firefox')
        Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette =>true)
    elsif BROWSER.eql?('firefox_headless')
        browser_options = Selenium::WebDriver::Firefox::Options.new(args: ['--headless'])
        Capybara::Selenium::Driver.new(app, :browser => :firefox, options: browser_options)
    #elsif BROWSER.eql?('ie')
    #    Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
    #elsif BROWSER.eql?('safari')
    #   Capybara::Selenium::Driver.new(app, :browser => :safari)
    #elsif BROWSER.eql?('poltergeist')
    #    options = { JS_ERRORS: FALSE }
    #    Capybara::Poltergeist::Driver.new(app, options)
    end 
end

Capybara.configure do |config| 
    #Selenium #Selenium_chrome  #selenium_chrome_healess
    config.default_driver = :selenium
    #config.default_driver = :selenium
    config.app_host = CONFIG['url_padrao']
    #config.app_host = CONFIG['www.google.com.br']
    config.default_max_wait_time = 20
end