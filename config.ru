Dir["./helpers/*.rb"].each {|file| require file }
require './main.rb'

run Sinatra::Application