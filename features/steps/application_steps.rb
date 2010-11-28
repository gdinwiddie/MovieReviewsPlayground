Given /^I load (\d+) movie[s]? in the movie list$/ do |movie_count|
  movie_count.each do |current_count|
    puts current_count # needs to poke these into the database
  end
end

When /^I visit the homepage$/ do
  visit('/')
end

Then /^I see a list of movies$/ do
  page.should have_xpath('//table')
end

Then /^I see a list with (\d+) movie[s]?$/ do |movie_count|
  page.all(:xpath, '//table/tr').length.should == movie_count
end