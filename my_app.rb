require "sinatra"
require "./lib/post"

class MyApp < Sinatra::Base
  before do
    @recent_posts = Post.most_recent(5)
    @posts = Post.all
  end

  get "/" do
    @title = "SKWAK@ADA BLOG"
    erb :index
  end

  get "/about" do
    @title = "SKWAK@ADA BIO"
    erb :about
  end

  get "/posts/:date/:title" do
    @title = "SKWAK@ADA BLOG POST"
    erb "/posts/#{params[:date]}/#{params[:title]}".to_sym
  end

end
