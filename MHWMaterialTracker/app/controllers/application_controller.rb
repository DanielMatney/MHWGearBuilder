class ApplicationController < Sinatra::Base
  
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
      set :session_secret, 'mymats'
  end
  
  get '/' do
    redirect "/homepage"
  end
  
  helpers do 
    
    def logged_in?
      !!session[:username]
    end
    
    def login(username)
      session[:username] = username
    end
    
    def logout
      session.clear
    end
    
    
    
  end

end