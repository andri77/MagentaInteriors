
Given /^I use mysql gem to test around$/ do
@driver = Selenium::WebDriver.for $brw.to_sym #take $brw from env.rb for multi browser testing + capybara/selenium integration

#profile = Selenium::WebDriver::Firefox::Profile.new
#profile.enable_firebug
#@driver = Selenium::WebDriver.for :firefox, :profile => profile

@driver.get "http://www.magentainteriors.com.au"
@driver.manage.window.resize_to(1200, 800)

puts "I'm at Homepage"

wait = Selenium::WebDriver::Wait.new(:timeout => 10)
wait.until { @driver.find_element(:class, "welcome").text.downcase.include? "welcome to magenta interiors"  }

logoimage = @driver.find_element(:xpath, "html/body/div[1]/div/div/div[1]/div[1]/h1/a/img")
src = logoimage[:src]
src.include? "logo.jpg"

puts "I'm a new customer"

#login = @driver.find_element(:link_text, "Log In")
#@driver.action.click(login).perform
@driver.find_element(:link_text, "Log In").click

#Crt =
@driver.find_element(:xpath, ".//*[@id='login-form']/div[2]/div[1]/div/button").click
#@driver.action.click(Crt).perform

puts "I'm registering"

first = @driver.find_element(:id, "firstname")
first.send_keys "Andri"

last = @driver.find_element(:id, "lastname")
last.send_keys "Hu"

email = @driver.find_element(:id, "email_address")
email.send_keys "test@magenta.com.au"

pwd = @driver.find_element(:id, "password")
pwd.send_keys "123456"

conf = @driver.find_element(:id, "confirmation")
conf.send_keys "123456"

#@driver.find_element(:id, "is_subscribed").click

@driver.find_element(:xpath, ".//*[@id='form-validate']/div[3]/button").click

puts "I'm logging out"

wait.until {@driver.find_element(:link_text, "Log Out")}.click

puts "I'm logging in"

wait.until {@driver.find_element(:link_text, "Log In").click}

eml = @driver.find_element(:id, "email")
eml.send_keys "test@magenta.com.au"

pass = @driver.find_element(:id, "pass")
pass.send_keys "123456"

  @driver.find_element(:id, "send2").submit

#require 'debugger'
#  debugger
#  1

puts "Flushing database"

system("ruby", ".\\features\\step_definitions\\mysql")

@driver.quit

  end