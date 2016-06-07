require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb(:battle_form)
  end

  post '/battle_main' do
    p params
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb(:battle_main)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
