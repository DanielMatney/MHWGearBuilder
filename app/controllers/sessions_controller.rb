class SessionsController < ApplicationController

  get '/login' do
    erb :"sessions/login"
  end
  
  post '/login' do
    user = User.find_by(username: params[:username])
    if params[:username].empty? || params[:password].empty?
      @error = "Please enter both a username and password."
      erb :'sessions/login'
    else 
      if user && user.authenticate(params[:password])
        session[:username] = user.username
        session[:user_id] = user.id
        redirect '/gearsets'
      else
        @error = "Account not found"
        erb :'sessions/login'
      end
    end
  end
  
   get '/logout' do
    logout
    redirect '/'
  end
  
end