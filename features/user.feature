Feature: User Management for MovieReviews
  User of the Movie Review site need to be logged in to comment
  or vote on movies and reviews.

Scenario: User sign up
  Given I am not a signed in user
  When I visit the homepage
  Then I should be able to sign up

Scenario: User sign in
  Given I am a signed up user
  When I visit the homepage
  Then I should be able to log in

