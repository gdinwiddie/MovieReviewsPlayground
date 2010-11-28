require 'capybara/cucumber'
require 'web/lib/movie_review_site'

$CLASSPATH << 'bin'

Capybara.app = MovieReviewSite