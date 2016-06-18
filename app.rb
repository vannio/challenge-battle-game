require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1], 'sloth.jpg')
    player2 = Player.new(params[:player2], 'capybara.jpg')
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
    @move_message = "#{ @player1.name } attacked #{ @player2.name }!"
    @player1_hp_percent = (@player1.hit_points / 60) * 100
    @player2_hp_percent = (@player2.hit_points / 60) * 100

    Game.current.attack(@player2)
    erb(:attack)
  end

  post '/heal' do
    @player1 = Game.current.players.first
    @player2 = Game.current.players.last
    @move_message = "#{ @player1.name} healed itself!"
    @player1_hp_percent = (@player1.hit_points / 60) * 100
    @player2_hp_percent = (@player2.hit_points / 60) * 100

    Game.current.heal
    erb(:attack)
  end

  run! if app_file == $0
end
