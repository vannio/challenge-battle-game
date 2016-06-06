require "sinatra"

get '/' do
  "hi!"
end

get '/secret' do
  "( . Y . )"
end

get '/supersecret' do
  "( . Y . )<br>( . Y . )"
end

get '/cat' do
  "<img src='http://bit.ly/1eze8aE' style='border: dashed 4px red'>"  
end

set :session_secret, 'super secret'
