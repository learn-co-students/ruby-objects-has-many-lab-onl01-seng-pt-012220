require "pry"
class Song
  attr_accessor :title, :artist
  @@all = []
  def initialize(song)
    @title = song
    @@all << self
  end
  def artist
    @artist = self.artist

  end

  def self.all
    @@all
  end

end
