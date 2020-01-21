class GearsetsController < ApplicationController
  
  #Creating
  
  get '/gearsets/new' do
    if !logged_in?
      redirect "/login"
    else
    erb :'/gearsets/new'
    end
  end
 
  post '/gearsets' do
    gearset = current_user.gearsets.build(params)
    if !gearset.name.empty?
      gearset.save
      redirect '/gearsets'
    else
      @error = "Oops you entered something wrong. Try again."
      erb :'/gearsets/new'
    end
  end
 
 #Reading
 
  get '/gearsets' do
    if !logged_in?
      redirect "/login"
    else
      @gearsets = Gearset.all.reverse
      erb :'/gearsets/index'
    end
  end
 
  get '/gearsets/:id' do
    if !logged_in?
      redirect "/login"
    else
      @gearsets = Gearset.find(params[:id])
      erb :'gearsets/show'
    end
  end
 
  #Updating
  
  get '/gearsets/:id/edit' do
    if logged_in?
      @gearsets = Gearset.find(params[:id])
      erb :'/gearsets/edit'
    else
      redirect '/login'
    end
  end
  
   patch '/gearsets/:id' do
    @gearsets = Gearset.find(params[:id])
    if !params["gearsets"]["name"].empty?
      @gearsets.update(params["gearsets"])
      redirect "/gearsets/#{params[:id]}"
    else
      @error = "Name field cannot be empty."
      erb :'/gearsets/edit'
    end
  end
  
  #Deleting
  
  delete '/gearsets/:id' do
    gearset = Gearset.find(params[:id])
    gearset.destroy
    redirect '/gearsets'
  end

end