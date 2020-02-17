require 'pry'

class Artist

  attr_accessor :name

  def initialize (name)
    @name = name
  end

  def songs
    Song.all.select {|songs| songs}
  end

  def add_song (song)
    song.artist = self
  end
  
  def add_song_by_name (song_name)
    performer = Song.new(song_name)
    add_song(performer)
  end
  
  def self.song_count
    Song.all.count
  end

end