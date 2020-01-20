class UsersController < ApplicationController

  get '/signup' do
    erb :'sessions/signup'
  end
  
  post '/signup' do
    user = User.new(params)
    if user.username.empty? || user.password.empty?
      @error = "Please enter both a username and password."
      erb :'sessions/signup'
    elsif User.find_by(username: user.username)
      @error = "An account with that name already exists"
      erb :'sessions/signup'
    else
      user.save
      session[:user_id] = user.id
      session[:username] = user.username
      redirect '/gearsets'
    end
  end
  
end