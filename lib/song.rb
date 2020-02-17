require 'pry'

class Song
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize (name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name #knows the name of the artist and returns nil if it doesnt have one.
    if self.artist
      self.artist.name
    else
      nil
    end
  end
  
end