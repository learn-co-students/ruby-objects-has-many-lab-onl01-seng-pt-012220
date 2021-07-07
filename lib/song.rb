require "pry"
class Song
  attr_accessor :artist,:name, :genre
  @@all = []
  def initialize(song, genre = nil)
    @name = song
    @genre = genre
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end


  def artist_name
    answer = nil
    if self.artist
    answer = self.artist.name
    end
    answer
  end



end
