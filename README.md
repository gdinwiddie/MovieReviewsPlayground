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

# Running The Code

Frankly, I (jon) could not get it to work probably as George had intended. Best I got was

<pre><code>
cd <project root>/web
ruby start_web.rb
== Sinatra/1.1.0 has taken the stage on 4567 for development with backup from WEBrick
[2010-11-26 22:08:49] INFO  WEBrick 1.3.1
[2010-11-26 22:08:49] INFO  ruby 1.8.7 (2009-06-12) [universal-darwin10.0]
[2010-11-26 22:08:49] INFO  WEBrick::HTTPServer#start: pid=3357 port=4567
[26/Nov/2010:22:09:01 EST] "GET / HTTP/1.1" 200 268
- -> /
</code></pre>

# Development

The source is hosted at [GitHub](https://github.com/gdinwiddie/MovieReviewsPlayground)