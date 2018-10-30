require 'pry'

class Genre
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all.push(self)
  end
  
  def self.all
    @@all
  end
  
  def songs
    # The Genre class needs an instance method, #songs, that iterates through all songs and finds the songs that belong to that genre.
    Song.all.select do |x|
      x.genre = self
    end
  end
  
  def artists
    # The Genre class needs an instance method, #artists, that iterates over the genre's collection of songs and collects the artist that owns each song.
    
  end
end