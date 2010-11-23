Given /^I load (\d+) movie[s]? in the movie list$/ do |movie_count|
  pending # express the regexp above with the code you wish you had
end

When /^I visit the homepage$/ do
  visit('/')
end

Then /^I see a list of movies$/ do
  page.should have_xpath('//table')
end

Then /^I see a list with (\d+) movie[s]?$/ do |movie_count|
  pending # express the regexp above with the code you wish you had
end