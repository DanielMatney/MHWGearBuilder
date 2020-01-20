class UsersController < ApplicationController

  get '/signup' do
    erb :'sessions/signup'
  end
  
  post '/signup' do
    user = User.new(params)
    if user.username.empty? || user.password.empty?
      @error = "Please enter both a username and password."
      erb :'sessions/signup'
    else
      user.save
      redirect '/gearsets'
    end
  end
  
end