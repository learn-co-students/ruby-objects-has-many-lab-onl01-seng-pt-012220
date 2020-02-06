class Song
  attr_accessor :artist, :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def artist_name
    @artist ? @artist.name : nil
  end
end
