require "sinatra"
require "./lib/post"

class MyApp < Sinatra::Base

  get "/" do
    @recent_posts = Post.most_recent(5)
    @posts = Post.all
    @title = "SKWAK@ADA BLOG"
    erb :index
  end

  get "/about" do
    @recent_posts = Post.most_recent(5)
    @posts = Post.all
    @title = "SKWAK@ADA BIO"
    erb :about
  end

  get "/posts/:date/:title" do
    @title = "SKWAK@ADA BLOG"
    @recent_posts = Post.most_recent(5)
    @posts = Post.all
    erb "/posts/#{params[:date]}/#{params[:title]}".to_sym
  end

end
