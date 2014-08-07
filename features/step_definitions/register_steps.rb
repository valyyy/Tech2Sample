Given(/^I am on RegisterPage$/) do
  visit RegisterPage
end

When(/^I try to register using (.*) information$/) do |status|
  on(RegisterPage).register(status)
end

When(/^I try to register leaving (.*) empty/) do |field|
  on(RegisterPage).register('valid', field)
end

Then(/^I should see the (.*)/) do |errorMsg|
  expect(on(RegisterPage).error).to eq(errorMsg)
end

