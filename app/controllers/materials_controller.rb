class MaterialsController < ApplicationController
  
  get '/materials' do
    "You are logged in as #{session[:username]}"
  end
  
  get '/materials/new' do
    if !logged_in?
      redirect "/login"
    else
      ""
    end
  end
  
end