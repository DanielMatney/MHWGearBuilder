class GearsetsController < ApplicationController
  
  get '/gearsets' do
    #if !logged_in?
      #redirect "/login"
    #else
      @gearsets = Gearset.all
      erb :"/gearsets/index.html"
    #end
  end
 
 
 
  get '/gearsets/new' do
    if !logged_in?
      redirect "/login"
    end
  end
  
  
end