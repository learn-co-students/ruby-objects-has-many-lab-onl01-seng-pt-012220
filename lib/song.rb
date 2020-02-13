class Song

# @@all is a class variable set to an array
    attr_accessor :artist, :name
    @@all = []
# new is initialized with an argument of a name

    def initialize(name, artist=nil)
        # has a name
        @name = name
        @artist = artist
# new pushes new instances into a class variable called @@all upon initialization
        @@all << self
    end

    def artist_name
# knows the name of its artist
        if self.artist
            self.artist.name
        else
            nil # returns nil if the song does not have an artist
        end
    end

    # .all is a class method that returns an array of all song instances that have been created
def self.all
    @@all
end

end