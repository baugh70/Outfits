require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  puts '/' do
    @outfit = Outfit.new(params["zip_code"])
    erb :index
  end

end