require "pry"
class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs << Song.all.select {|song| Song.artist == self }

  end

  def add_song

  end

  def add_song_by_name

  end

  def self.song_count

  end
end
