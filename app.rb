require_relative 'config/environment'

class App < Sinatra::Base


  get '/views' do 
    erb :user_input
  end
end
