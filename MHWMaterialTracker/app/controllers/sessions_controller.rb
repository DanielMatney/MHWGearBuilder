class SessionsController < ApplicationController

  get '/login' do
    erb :"sessions/login.html"
  end
  
  post '/sessions' do
    "Logging you in"
    login(params[:username])
    redirect '/homepage'
  end
  
   get '/logout' do
    logout
    redirect '/homepage'
  end
  
  get '/homepage' do
    erb :"sessions/homepage.html"
  end
  
  get '/signup' do
    erb :"sessions/signup.html"
  end
  
end