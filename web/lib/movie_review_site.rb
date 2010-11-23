require 'sinatra/base'
require 'haml'

class MovieReviewSite < Sinatra::Base
  set :app_file, __FILE__
  set :inline_templates, true

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
