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

get '/cat' do
   @random_name = ["Amigo", "Misty", "Almond"].sample
   erb:index
end
