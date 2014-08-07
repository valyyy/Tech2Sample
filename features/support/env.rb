require 'watir-webdriver'
require 'page-object'

World(PageObject::PageFactory)

browser = Watir::Browser.new :firefox

Before do
  @browser = browser
end

After do
  @browser.cookies.clear
end

at_exit do
  browser.close
end