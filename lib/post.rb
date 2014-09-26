class Post 

  attr_accessor :title, :url

  def initialize(array)
    @title = array[-1].split(".")[0]
    @url = "/posts/#{@title}"
  end

  def self.all
    Dir.glob("views/posts/*").collect do |filepath|
      a = filepath.split("/")
      new(a)
    end
  end

end
