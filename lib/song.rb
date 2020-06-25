require 'pry'
class Song 
  attr_accessor :name, :artist 
  #artist is the getter that allows us to see it in the below methods to see the value of artist 

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    #binding.pry
    if !artist
      return nil 
    else
      artist.name
    end
    #if artist == nil 
    #return nil 
  #else 
    #artist.name
  end
#this comes from the artist instance 
#this has a value of an insatnce of artist 
#once you have name of the artist you have access to all the methods 
end