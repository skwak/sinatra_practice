require 'sinatra'

class MyApp < Sinatra::Base

  get "/" do
    erb :index
  end

  get "/about-me" do
    "skwak about me"
  end

end
