require "pry"

class Author

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def posts
    @posts
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    @posts << new_post
  end

  def self.post_count
    @@all.map {|author| author.posts.length}.inject{|sum, num| sum + num}
  end


end
