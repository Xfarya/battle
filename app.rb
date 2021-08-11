require "sinatra"
require "sinatra/reloader" if development?

get '/' do
  "Hello!"
end

get '/secret' do
  "I am fine"
end

get '/bones' do
  "Free Your Bones"
end

get '/random-cat' do
   @name = ["Amigo", "Misty", "Almond"].sample
   erb:index
end

get'/cat-form' do
  erb:catform
end

post '/named-cat' do
  p params[:name]
  @name = params[:name]
  erb:index
end