class GearController < ApplicationController
  
  get '/gearsets' do
    if !logged_in?
      redirect "/login"
    else
      @gearset = Gearset.all
      erb :"/gearset/index"
    end
  end
 
 
 
  get '/gearset/new' do
    if !logged_in?
      redirect "/login"
    end
  end
  
  
end