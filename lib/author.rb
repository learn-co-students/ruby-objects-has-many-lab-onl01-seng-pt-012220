class Author 
  attr_accessor :name, :posts
  
  @@post_count = 0
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all
  end
  
  def add_post(post_name)
    post_name.author = self
    @@post_count += 1 
  end
  
  def add_post_by_title(title)
    post_name = Post.new(title)
    @@post_count += 1
    post_name.author = self
    @@post_count += 1 
  end
  
  def Author.post_count
    @@post_count
  end
end