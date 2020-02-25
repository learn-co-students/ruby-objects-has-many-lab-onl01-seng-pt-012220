#require_relative './lib/artist.rb'
class Song 
  
  attr_accessor :name, :artist, :genre 
  @@all = []
  
  def initialize(name, artist = nil, genre = nil)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
   def artist_name
    @artist ? @artist.name : nil
  end
  
end
  
  