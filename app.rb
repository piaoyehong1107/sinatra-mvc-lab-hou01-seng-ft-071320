require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  
  get '/'do
    "Pig Latinizer!"
    erb :user_input
  end
  
  post '/piglatinize'do
    @piglatinized=PigLatinizer.new(params[:user_phrase])
    erb :piglatinize
  end
  
end