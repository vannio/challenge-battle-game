require 'sinatra'

get '/random-cat' do
  @name = ["Joe", "Van"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  # @name = params.fetch(:name, "Tom")
  @name = params[:name]
  @age = params[:age]
  erb(:index)
end
