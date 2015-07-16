require 'bundler'
Bundler.require
require_relative 'models/outfit.rb'

class MyApp < Sinatra::Base

  puts '/' do
    @outfit = Outfit.new(params["zip_code"])
    erb :index
  end

  get '/outfit.erb' do
    erb :outfit
  end
end