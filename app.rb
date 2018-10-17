require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do 
    params.to_s
    words = PigLatinizer.new
    "#{words.piglatinize(params[:user_phrase])}"
  end
end