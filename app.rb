require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_one_name] = params["player-one-name"]
    session[:player_two_name] = params["player-two-name"]
    redirect '/play'
  end

  get '/play' do
    @player_one_name = session[:player_one_name]
    @player_two_name = session[:player_two_name]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end