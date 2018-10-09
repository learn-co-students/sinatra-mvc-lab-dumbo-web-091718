require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    "Pig Latinizer!
    <form>Enter your phrase: user_phrase </form>"
  end

  post "/piglatinize" do
    @piglatin = PigLatinizer.new
    @piglatin = @piglatin.piglatinize(params["user_phrase"])
    return @piglatin
  end
end
