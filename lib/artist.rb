require 'pry'

class Artist
  attr_accessor :name

   @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end 

  def self.all
    @@all
  end 

  def songs 
    Song.all
  end
  #this just wants you to return all the songs and all of the songs are in the song class. 


  def add_song(song)
    song.artist = self
  end
  #all this does is tells the song that this is the artist 
  #how can you tell this the arguent song belongs to a particular artist 
  #new song being added belongs to a particular artist 


  def add_song_by_name(song_name)
    #binding.pry
    new_song = Song.new(song_name)
    add_song(new_song)
  end
#  takes in an argument of a song name, creates a new song with it and associates the song and artist 

  def self.song_count
    Song.all.count
  end
#@name="Adele = self 
#class method so this is why this starts with self. 
#class methods always start with self.
# is a class method that retur
#is a class method that returns the total number of songs associated to all existing artists
#all the songs are being held in the song array - so we can say all songs.count to count how many songs are in that array 
end