require 'sinatra/base'
require './lib/player'
require './lib/game'

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
    @player1 = $player1
    @player2 = $player2
    erb(:play)
  end

  post '/attack' do
    Game.new.hit($player2)
    redirect '/attacked'
  end

  get '/attacked' do
    @player2 = $player2
    erb(:attacked)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end