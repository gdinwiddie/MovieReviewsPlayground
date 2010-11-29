Feature: Movies + the usual data are visible to website visitors

  This feature is a bit indistinct to start, but I'm sure
  we'll flesh it out over time.

Scenario: See a list of movies
  When I visit the homepage
  Then I see a list of movies

Scenario: A list of one movie
  Given I load 1 movie in the movie list
  When I visit the homepage
  Then I see a list with 1 movie

Scenario: A list of three movies
  Given I load 3 movies in the movie list
  When I visit the homepage
  Then I see a list with 3 movies
  