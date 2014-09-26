require 'sinatra'
require './lib/post'

class MyApp < Sinatra::Base

  get "/" do
    @posts = Post.all
    @title = "SKWAK@ADA"
    erb :index
  end

  get "/about" do
    @title = "SKWAK@ADA BIO"
    erb :about
  end

  get "/posts/:title" do
    # @posts = Post.all
    @title = "SKWAK@ADA BLOG"
    erb "/posts/#{params[:title]}".to_sym
  end

  # get "/posts/boom" do
  #   @title = "SKWAK@ADA BOOM"
  #   erb "/posts/boom".to_sym
  # end
end
