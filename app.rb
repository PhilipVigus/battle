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
    player1 = Player.new(params["player-one-name"])
    player2 = Player.new(params["player-two-name"])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/attack' do
    @game = $game
    @game.hit(@game.inactive_player)
    if @game.inactive_player.dead?
      redirect '/loss'
    else
      redirect '/attacked'
    end
  end

  get '/attacked' do
    @game = $game
    @game.switch_player
    erb(:attacked)
  end

  get '/loss' do
    @losing_player = @game.inactive_player
    erb(:loss)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end