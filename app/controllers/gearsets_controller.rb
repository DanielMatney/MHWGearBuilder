class GearsetsController < ApplicationController
  
  get '/gearsets' do
    #if !logged_in?
      #redirect "/login"
    #else
      @gearsets = Gearset.all
      erb :"/gearsets/index"
    #end
  end
 
 get '/gearsets/:id' do
   @gearsets = Gearset.find(params["id"])
   erb :'gearsets/show'
 end
 
  get '/gearsets/new' do
    if !logged_in?
      redirect "/login"
    end
  end
  
  
end