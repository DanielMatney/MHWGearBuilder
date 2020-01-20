class SessionsController < ApplicationController

  get '/login' do
    erb :"sessions/login"
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
  
end