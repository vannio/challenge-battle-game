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
    Game.start(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @player1 = Game.current.players.first
    @player2 = Game.current.players.last
    erb(:play)
  end

  post '/attack' do
    @player1 = Game.current.players.first
    @player2 = Game.current.players.last
    Game.current.attack(@player2)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
