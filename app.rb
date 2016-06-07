require 'sinatra'

get '/named-cat' do
  @name = ["Joe", "Van"].sample
  erb(:cat)
end

post '/named-cat' do
  p params
  # @name = params.fetch(:name, "Tom")
  @name = params[:name]
  @age = params[:age]
  erb(:cat)
end

get '/' do
  p params
  erb(:index)
end
