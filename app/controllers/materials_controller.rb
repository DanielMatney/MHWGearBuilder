class MaterialsController < ApplicationController
  
  get '/materials' do
    "You are logged in as #{session[:username]}"
  end
  
  
  
end