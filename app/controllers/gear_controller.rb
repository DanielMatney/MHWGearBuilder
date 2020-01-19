class GearController < ApplicationController
  
  get '/gear' do
    if !logged_in?
      redirect "/login"
    else
      erb :"/gear/index"
    end
  end
 
 
 
  get '/gear/new' do
    if !logged_in?
      redirect "/login"
    end
  end
  
  
end