class Artist

    #has an attr_accessor for name
    attr_accessor :name
    @@song_count = 0
    

    #is initialized with a name
    def initialize(name)
        @name = name
        @songs = []
    end

    #takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist
    def add_song(song)
        self.songs << song
        song.artist = self
        @@song_count +=1
        song
    end

    def songs
        #has many songs
        Song.all.select {|song| song.artist == self}
    end

    #takes in an argument of a song name, creates a new song with it and associates the song and artist
    def add_song_by_name(name)
        song = Song.new(name)
        self.songs << song
        song.artist = self
        @@song_count += 1
    end

    def self.song_count
        @@song_count + 1 #.song_coung is a class method that returns the total number of songs associated to all existing artists
    end

end