class Artist 
  attr_accessor :name 
   @@songs=[]
   @@count = 1  
   
  def initialize(name)
    @name=name 
    @@songs << self 
  end 
  
   def add_song(song)
      song.artist=self 
      self.songs << song 
      @@count +=1
   end 
   
   def add_song_by_name(name)
     song =Song.new(name)
     song.artist=self
     self.songs << song 
     @@count +=1
   end 
   
   def songs 
     Song.all
   end 
   
   def self.song_count
    @@count
   end 
   
end 