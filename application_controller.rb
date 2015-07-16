require 'bundler'
Bundler.require
require_relative 'models/outfit.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end


  post '/outfit' do

    @outfit = Outfit.new(params["zip_code"])
    erb :outfit
  end
end