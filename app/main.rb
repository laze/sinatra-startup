require 'sinatra'
require 'sinatra/reloader'

# require 'mongoid'
# require 'slim'
require 'compass'
require 'erb'
#require 'redcarpet'
 
configure do
  # Mongoid.load!("./mongoid.yml")
  # Set your Google Analytics ID here if you have one:
    set :google_analytics_id, 'UA-12345678-1'

    #** Set up directories.
    set :layouts_dir, './app/views/layouts'
    set :partials_dir, './app/views/partials'

    #** Configure compass
    # @see http://compass-style.org/help/tutorials/integration/
    Compass.add_project_configuration(File.join(settings.root, 'config', './app/config/compass.rb'))
end

get '/' do
    @page_title = 'Hello World!'

    erb :index,
	   :layout => :default,
       :layout_options => {:views => settings.layouts_dir}
end