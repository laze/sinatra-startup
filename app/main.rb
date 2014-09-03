require 'sinatra'
# require 'sinatra/reloader' if development?
# require 'mongoid'
# require 'slim'
require 'erb'
require 'redcarpet'
 
configure do
  # Mongoid.load!("./mongoid.yml")
end

get '/' do
	erb :index
end