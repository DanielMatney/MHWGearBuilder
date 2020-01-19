class SessionsController < ApplicationController

  get '/login' do
    erb :"sessions/login.html"
  end
  
  post '/sessions' do
    "Logging you in"
    login(params[:username])
    redirect '/'
  end
  
   get '/logout' do
    logout
    redirect '/'
  end
  
  get '/signup' do
    erb :"sessions/signup.html"
  end
  
end