Given(/^I am on the LoginPage$/) do
  visit_page LoginPage
end

When(/^I try to login using (.*) and (.*)$/) do |username, password|
  on(LoginPage).login(username, password)
end


