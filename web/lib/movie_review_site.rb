require 'sinatra/base'
require 'haml'
cur_dir= File.expand_path(File.dirname(__FILE__))
require cur_dir + '/../../features/steps/admin_helper'

# Sinatra needs: require '../features/steps/admin_helper'

#TODO set this some way that Cucumber & Sinatra don't need separate settings
$CLASSPATH << 'bin'
$CLASSPATH << '../bin'

class MovieReviewSite < Sinatra::Base
  set :app_file, __FILE__
  set :inline_templates, true
  $model = AdminHelper.new

  get '/' do
    haml :index
  end
end

__END__
@@ index
!!!
%html
  %head
    %title A movie review application
  %body
    %h1 Hello, world!
    %table
    - AdminHelper.new.movie_list.each do |movie|
      %tr movie
