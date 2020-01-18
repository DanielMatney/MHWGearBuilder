class MaterialsController < ApplicationController
  
  get '/materials' do
    "You are logged in as #{session[:username]}"
  end
  
  get '/materials/new' do
    if !logged_in?
      redirect "/login"
    else
      "A new post form"
    end
  end
  
  get '/logout' do
    session.clear
  end
end