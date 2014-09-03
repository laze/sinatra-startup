require 'sinatra'
require 'sinatra/reloader'
# require 'mongoid'
# require 'slim'
require 'erb'
require 'redcarpet'
 
configure do
  # Mongoid.load!("./mongoid.yml")
  # Set your Google Analytics ID here if you have one:
    set :google_analytics_id, 'UA-12345678-1'

    set :layouts_dir, './app/views/layouts'
    set :partials_dir, './app/views/partials'
end

get '/' do
    @page_title = 'Hello World!'

    erb :index,
	   :layout => :default,
       :layout_options => {:views => settings.layouts_dir}
end