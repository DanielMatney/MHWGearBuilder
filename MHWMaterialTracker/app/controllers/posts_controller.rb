class PostsController < Application Controller
  
  get '/posts' do
    "You are logging in as #{session[:username]}"
  end
  
end