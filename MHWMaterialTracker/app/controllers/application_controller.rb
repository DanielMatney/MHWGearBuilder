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
  
end