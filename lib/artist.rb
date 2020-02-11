require "pry"
class Artist
  attr_accessor :name#, :songs

  def initialize(name)
    @name = name
    #@songs = []
  end

  def songs
    Song.all.select { |song| song.artist == @name}
    binding.pry
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name, genre = nil)
     new_song = Song.new(name, genre)
     add_song(new_song)
   end

  def self.song_count

  end

end
