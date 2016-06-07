require 'sinatra'

get '/cat' do
  @name = ["Joe", "Van"].sample
  erb(:index)
end
