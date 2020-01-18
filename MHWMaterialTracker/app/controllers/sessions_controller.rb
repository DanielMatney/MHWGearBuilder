class SessionsController < ApplicationController

  get '/login' do
    erb :"sessions/login.html"
  end
  
  post '/sessions' do
    login(params[:username])
    redirect '/homepage'
  end
  
   get '/logout' do
    logout
    redirect '/homepage'
  end
end