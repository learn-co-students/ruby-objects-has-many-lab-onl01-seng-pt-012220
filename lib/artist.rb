class Artist
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name 
        
    end

    def save
        @@all << self
    end

    def songs
        Song.all.select {|songs| songs.artist == self}
    end
    
    def add_song(song)
        song.artist = self
        save
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        add_song(song)
        save
    end

    def self.song_count
        @@all.count
    end




end