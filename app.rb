require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/piglatinize' do
    @result = PigLatinizer.new.piglatinize(params[:user_phrase])
    erb :user_input
  end

end
