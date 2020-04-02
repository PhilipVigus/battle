require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params["player-one-name"])
    $player2 = Player.new(params["player-two-name"])
    redirect '/play'
  end

  get '/play' do
    @player_one_name = $player1.name
    @player_two_name = $player2.name
    erb(:play)
  end

  post '/attack' do
    redirect '/attacked'
  end

  get '/attacked' do
    erb(:attacked)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end