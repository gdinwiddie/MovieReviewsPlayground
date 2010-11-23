When /^I visit the homepage$/ do
  visit('/')
end

Then /^I see a list of movies$/ do
  page.should have_xpath('//table')
end
