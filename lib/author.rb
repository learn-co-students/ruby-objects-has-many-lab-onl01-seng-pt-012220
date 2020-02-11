require "pry"
class Author
  attr_accessor :name, :posts
  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select {|pst| pst.author == self.name }
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    add_post(new_post)
  end



end
