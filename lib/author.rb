class Author

    attr_accessor :name, :posts
  
    
    def initialize(name)
      @name = name
      @posts = []
    end

    def self.all
      @@all
    end   

    def posts
    Post.all
    end
    #has many posts 
  
    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post_title)
      new_post = Post.new(post_title)
      add_post(new_post)
    end
    #takes in an argument of a post title, creates a new post with it and associates the post and author
  
    def self.post_count
      Post.all.count
    end
  end