require 'sinatra/base'
require 'haml'
cur_dir= File.expand_path(File.dirname(__FILE__))
require cur_dir + '/../../features/steps/admin_helper'

$CLASSPATH << cur_dir + '/../../bin'

class MovieReviewSite < Sinatra::Base
  set :app_file, __FILE__
  set :inline_templates, true

  get '/' do
    @model = AdminHelper.new
    #@model.add_movie("dummy movie")
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
    %h1 Review these movies:
    %table
      - @model.movie_list.each do |movie|
        %tr
          %td #{movie}
    %p #{@model.get_movie_count} movies