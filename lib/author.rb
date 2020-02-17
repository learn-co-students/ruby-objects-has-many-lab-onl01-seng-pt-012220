class Author 
  attr_accessor :name  
 
  def initialize(name)
    @name = name 
  end 
  
  def posts 
    Post.all.select do |post|
      post.author == self 
    end 
  end 
  
  def add_post(name)
   name.author = self 
  end 
  
  def add_post_by_title(name)
   new_post = Post.new(name)
   add_post(new_post)
  end 

  def self.post_count 
     Post.all.count
  end 
end 