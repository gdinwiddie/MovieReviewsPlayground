class Movie
  attr_accessor :title
  
  def initialize( title )
    @title = title
  end
  
  def to_s
    @title
  end
end

Given /^I load (\d+) movie[s]? in the movie list$/ do |movie_count|
  (1..movie_count.to_i).each do |i|
    @movie = Movie.new( "#{i} Movie" )
  end
  
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