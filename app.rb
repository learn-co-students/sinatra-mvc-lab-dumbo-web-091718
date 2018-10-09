require_relative 'config/environment'

class App < Sinatra::Base


  get '/' do
    erb :user_input
  end

  post '/' do
    erb :user_input

  end
    post '/piglatinize' do
      phrase = PigLatinizer.new
      @user_input = phrase.piglatinize(params[:user_phrase])
      erb :piglatinize, locals: { msg: @user_input }

    end

  #
  # post '/piglatinize' do  #{"user_phrase"=>"Onceway uponway away"}
  #   #params.inspect => "200 ok" from post method
  #   pig_latin = PigLatinizer.new
  #   @user_input = pig_latin.piglatinize_word(params[:user_phrase])
  #   erb :piglatinize
  # end


end
