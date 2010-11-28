class TestData
  @@movies = {
    'gwtw' => 'Gone With The Wind',
    'lebo' => 'The Big Lebowski',
    'mphg' => 'Monty Python and the Holy Grail',
  }
  
  def TestData.movies
    @@movies
  end
end

Given /^I load (\d+) movie[s]? in the movie list$/ do |movie_count|
  count= movie_count.to_i
  keylist= TestData.movies.keys
  (0..count-1).each do |index|
    key= keylist[index]    
    puts "#{index}, #{key}, #{TestData.movies[key]}"
    # needs to poke these into the database
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