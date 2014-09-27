require "sinatra"
require "./lib/post"

class MyApp < Sinatra::Base

  get "/" do
    @posts = Post.most_recent(5)
    @title = "SKWAK@ADA"
    erb :index
  end

  get "/about" do
    @title = "SKWAK@ADA BIO"
    erb :about
  end

  get "/posts/:date/:title" do
    @title = "SKWAK@ADA BLOG"
    erb "/posts/#{params[:date]}/#{params[:title]}".to_sym
  end

end
