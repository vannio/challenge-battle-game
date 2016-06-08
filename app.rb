require 'sinatra/base'

class Battle < Sinatra::Base
  require './lib/damage_calculator'
  require './lib/player'

  enable :sessions
  set :session_secret, 'Secret Session'

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1
    @player2 = $player2
    erb(:play)
  end

  post '/attack' do
    @player2 = $player2
    DamageCalculator.new.attack(@player2)
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
