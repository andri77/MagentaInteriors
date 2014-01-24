Given /^I am on magenta homepage$/ do
#if(page.driver.browser.browser.to_s == "internet_explorer")
  page.driver.browser.manage.window.maximize
  #begin
  #Selenium::WebDriver::Error:UnhandledAlertError
  #page.driver.wait_until.e
  #page.driver.browser.switch_to.alert.dismiss
  #end
#end
  visit $base_url
end

When /^I search for "(.*?)"$/ do |query|
  on_page_with :home do |page|
    page.fill_in_search query
    page.click_submit_button
  end

#require 'debugger'
#  debugger
#  1

end
