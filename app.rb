require 'sinatra'

get '/' do
  "Hello Izzy!!!"
end

get '/secret' do
  "Izzy and Jaiye's Secret page!!"
end

get '/another_secret' do
  "Izzy and Jaiye's Sesond Secret page!!"
end

get '/yet_another_secret' do
  "Tired now!!"
end

get '/random-cat' do
  @cat_of_many_names = ["Ginger", "Mr. Bigglesworth", "Greebo"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @cat_of_many_names = params[:name]
  erb(:index)
end

post '/named-cat' do
  p params
  @cat_of_many_names = params[:name]
  erb(:index)
end

get '/cat_with_many_names' do
  erb(:kitty_cat)
end
