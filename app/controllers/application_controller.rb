class ApplicationController < Sinatra::Base
  
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
      set :session_secret, 'mymats'
  end
  
  get '/' do
    erb :"/homepage"
  end
  
  helpers do 
    
    def logged_in?
      !!session[:username]
    end
    
    def login(username)
      if user = User.find_by(:username => username)
        session[:username] = user.username
      else
        redirect '/login'
      end
    end
    
    def logout
      session.clear
    end
    
    
    
  end

end