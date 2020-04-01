require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_one_name = params["player-one-name"]
    @player_two_name = params["player-two-name"]
    erb(:names)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end