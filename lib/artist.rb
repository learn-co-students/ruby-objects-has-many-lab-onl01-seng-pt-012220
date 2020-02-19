
class Artist 
    attr_accessor :name
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    
    end

    def add_song(song)
        song.artist = self
    end

    def self.all
        @@all
    end

    def songs
        Song.all
    end

    def add_song_by_name(name)
        new_song = Song.new(name)
        add_song(new_song)       
    end

    def self.song_count
        Song.all.count
    end

end