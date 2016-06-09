require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @player1 = $game.players.first
    @player2 = $game.players.last
    erb(:play)
  end

  post '/attack' do
    @player1 = $game.players.first
    @player2 = $game.players.last
    $game.attack(@player2)
    erb(:attack)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
