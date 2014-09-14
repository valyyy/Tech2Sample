Given(/^I am on the LoginPage$/) do
  visit_page LoginPage
end

When(/^I try to login using (.*) and (.*)$/) do |username, password|
  on(LoginPage).login(username, password)
end

When(/^I login using (.*) (.*) and remember me checked$/) do |username, password|
  on(LoginPage).login(username, password, "remember")
end

Then(/^I should see my (.*) after i log out$/) do |username|
  @browser.a(:class => 'sign_out').click
  expect(on(LoginPage).username).to eq(username)
end