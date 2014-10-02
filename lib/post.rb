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

  # def sort_all_posts
  #   @pages = all.sort_by { |post| post.date }.reverse
  # end
  #
  # def pagination(page=1, per_page=3)
  #   sort_all_posts
  #   @pages.each_slice(per_page).to_a[page-1]
  # end
  #
  # def pages(per_page=3)
  #   (count/per_page.to_f).ceil
  # end

  def pull_posts
    File.read("./views/posts/#{@date}/#{@title}.erb")
  end

end
