require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'shhhhhh'

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = {
      name: params[:player_1_name],
      hp: 100
    }

    session[:player_2] = {
      name: params[:player_2_name],
      hp: 100
    }

    # session[:player_1_name] = params[:player_1_name]
    # session[:player_2_name] = params[:player_2_name]
    redirect to('/play')
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    # @player_2_name = session[:player_2_name]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
