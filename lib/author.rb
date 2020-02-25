class Author
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def posts 
    Post.all.select {|array| array.author == self}
  end
  
  def add_post(array)
    array.author = self
  end
  
  def add_post_by_title(name)
    new_post = Post.new(name)
    add_post(new_post)
  end
  
  def self.post_count
    Post.all.length 
  end
  
end