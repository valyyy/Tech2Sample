Then(/^I should be on this (.*)$/) do |url|
  expect(@browser.url).to eq(url)
end

And(/^I should find the element located by id (.*)$/) do |element|
  @browser.text_field(:id => element).visible?
end

