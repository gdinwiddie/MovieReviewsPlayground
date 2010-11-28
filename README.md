# MovieReview

# Description

This is a sample application for a Movie Review Website.

We expect it to evolve into something that can do the following:

 * Movies + the usual data are visible to website visitors
 * Visitors can sign up for a free account
 * Movie Reviews can be added by users
 * Reviewers can give rating of 1-5
 * Rating for a movie is the average of all reviews
 * Users can vote up/down on other reviews
 * Users can comment on the reviews
 * Users can comment on the movies
 * Users can Favorite a reviewer
 * Users can search for movies with their favorite actor
 * Users can look for movies in a specific genre
 * Advanced movie rating is weighted based on popularity of review (voting score)
 * Users can create a list of "Movies I've Seen"
 * Users can create a "My Top Movies"
 * etc.

# Install

Make sure you have installed:

* sinatra
* bundler

For bundler, you need to:

`$ bundle install`

and it should look like this:

<pre><code>    Using haml (3.0.24)
    Using rack (1.1.0) 
    Using rspec (1.3.0) 
    Using tilt (1.1) 
    Using sinatra (1.1.0) 
    Using bundler (1.0.7) 
</code></pre>
    Your bundle is complete! Use `bundle show [gemname]` to see where a bundled gem is installed.
    
I don't know if this list is complete.  I haven't yet checked that out.  
In case it helps, I'm using <code>jruby-1.5.3</code> under <code>rvm</code and 
the complete list of gems I have installed is
<pre><code>
bouncy-castle-java (1.5.0145.2)
builder (2.1.2)
bundler (1.0.7)
capybara (0.4.0)
celerity (0.8.4)
childprocess (0.1.4)
cucumber (0.9.4)
cucumber-sinatra (0.3.0)
culerity (0.2.12)
diff-lcs (1.1.2)
extlib (0.9.15)
ffi (0.6.3)
gherkin (2.2.9)
haml (3.0.24)
highline (1.6.1)
jruby-openssl (0.7.2)
json (1.4.6)
json_pure (1.4.6)
mime-types (1.16)
nokogiri (1.4.4)
rack (1.2.1)
rack-test (0.5.6)
rspec (2.1.0)
rspec-core (2.1.0)
rspec-expectations (2.1.0)
rspec-mocks (2.1.0)
rubygems-update (1.3.7)
rubyzip (0.9.4)
selenium-webdriver (0.1.0)
sinatra (1.1.0)
templater (1.0.0)
term-ansicolor (1.0.5)
tilt (1.1)
weakling (0.0.4)
xpath (0.1.2)
</code></pre>
 

# Running The Code

## Cucumber tests
<pre><code>
$cucumber -p wip

Failing Scenarios:
cucumber -p wip features/movielist.feature:11 # Scenario: A list of one movie
cucumber -p wip features/movielist.feature:17 # Scenario: A list of three movies

2 scenarios (2 failed)
6 steps (2 failed, 4 passed)
0m0.708s

The --wip switch was used, so the failures were expected. All is good.
</code></pre>

## rspec tests
<pre><code>
$ rspec specs
..

Finished in 0.02 seconds
2 examples, 0 failures
</code></pre>

## Sinatra
<pre><code>
$ ./start_web.sh 
~/dev.java/MovieReviews/MovieReviews/web ~/dev.java/MovieReviews/MovieReviews
./lib/movie_review_site.rb:3:in `require': no such file to load -- features/steps/admin_helper (LoadError)
	from ./lib/movie_review_site.rb:3
	from ./lib/movie_review_site.rb:5:in `require'
	from start_web.rb:5
~/dev.java/MovieReviews/MovieReviews
</code></pre>

### Oops
Part of the problem is that the webserver is started in ./web instead of the project root directory.
Therefore, the 'require' statements need to be independent of the current working directory.


# Development

The source is hosted at [GitHub](https://github.com/gdinwiddie/MovieReviewsPlayground)
