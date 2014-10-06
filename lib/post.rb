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
    all.sort_by { |post| post.date }.last(n).reverse
  end

  def self.sort_all
    all.sort_by { |post| post.date }.reverse
  end

  def self.page_arrays
    sort_all.each_slice(2).to_a
  end

  def pull_posts
    File.read("./views/posts/#{@date}/#{@title}.erb")
  end

end
