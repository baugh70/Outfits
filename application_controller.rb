require 'bundler'
Bundler.require
require_relative 'models/outfit.rb'
require_relative 'models/hats.rb'
require_relative 'models/pants.rb'
require_relative 'models/shirt.rb'
require_relative 'models/shoes.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end


  post '/outfit' do

    @outfit = Outfit.new(params["zip_code"])
    erb :outfit
  end
end