class GearsetsController < ApplicationController
  
  #Creating
  
  get '/gearsets/new' do
    #if !logged_in?
      #redirect "/login"
    #else
    erb :'gearsets/new'
    #end
  end
 
  post '/gearsets' do
    gearset = Gearset.new(params)
    if !gearset.name.empty?
      gearset.save
      redirect '/gearsets'
    else
      @error = "Oops you entered something wrong. Try again."
      erb :'gearsets/new'
    end
  end
 
 #Reading
 
  get '/gearsets' do
    #if !logged_in?
      #redirect "/login"
    #else
      @gearsets = Gearset.all.reverse
      erb :"/gearsets/index"
    #end
  end
 
  get '/gearsets/:id' do
    @gearsets = Gearset.find(params[:id])
    erb :'gearsets/show'
  end
 
  #Updating
  
  get '/gearsets/:id/edit' do
    @gearsets = Gearset.find(params[:id])
    erb :'/gearsets/edit'
  end
  
   patch '/gearsets/:id' do
    @gearsets = Gearset.find(params[:id])
    if !params["gearsets"]["name"].empty? && !params["gearsets"]["name"].empty?
      @gearsets.update(params["gearsets"])
      redirect "/gearsets/#{params[:id]}"
    else
      @error = "Fields cannot be empty (just toss a . in or something)"
      erb :'/gearsets/edit'
    end
  end
  
  
  
  
  
  #Deleting
  
  
  
  
  
  
  
  
  
end