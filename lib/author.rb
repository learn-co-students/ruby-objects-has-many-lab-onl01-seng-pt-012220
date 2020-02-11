class Author 
  attr_accessor :name 
   
    @@posts=[]
    @@count = 1  
    
  def initialize(name)
    @name= name 
    @@posts << self 
  end 
  
  def add_post(post)
    post.author=self 
    self.posts << post
    @@count +=1 
  end 
  
  def add_post_by_title(post_title)
    post=Post.new(post_title)
    post.author=self 
    self.posts << post 
    @@count +=1
  end 
  
  def posts 
    Post.all
  end 
  
  def self.post_count
    @@count
  end 
  
end 