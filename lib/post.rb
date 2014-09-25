require 'sinatra'

class Post < Sinatra::Base
  # should be able to Access points, which are files within views/posts
  # title, url/path, filename, content

  # read my list of post files
  # create an array of Post objects
  # with the attributes set
  # Post.all => [post, post]

  attr_accessor :title, :url

  def initialize(array)
    @title = array[-1].split(".")[0]
    @url = "/posts/#{@title}"
  end

  def self.all
    #Dir.glob("*") <---finds everything in the current directory
    #Dir.glob("views/*")
    # ** two splats: go recursively
    Dir.glob("views/posts/*").collect do |filepath|
      a = filepath.split("/")
      self.new(a)
    end
  end
end
