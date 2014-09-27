require "date"

class Post

  attr_accessor :title, :url, :date

  def initialize(array)
    @title = array[-1].split(".")[0]
    @date = Date.parse(array[-2])
    @url = "/posts/#{@date}/#{@title}"
  end

  def self.all
    Dir.glob("views/posts/*/*").collect do |filepath|
      a = filepath.split("/")
      new(a)
    end
  end

  def self.most_recent(n)
    all.sort_by { |post| post.date }.last(n)
  end
end
