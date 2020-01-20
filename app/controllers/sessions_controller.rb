class SessionsController < ApplicationController

  get '/login' do
    erb :"sessions/login"
  end
  
  post '/login' do
    if params[:username].empty? || params[:password].empty?
      @error = "Please enter both a username and password."
      redirect '/login'
    else 
      if user = User.find_by(username: params[:username], password: params[:password])
        session[:username] = user.username
        redirect '/gearsets'
      else
        @error = "Account not found"
        redirect '/login'
      end
    end
  end
  
   get '/logout' do
    logout
    redirect '/'
  end
  
end