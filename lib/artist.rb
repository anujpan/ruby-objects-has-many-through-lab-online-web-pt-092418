require 'pry'

class Artist 
  attr_accessor :name, :genre 
  
  @@all = [] 
  
  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all  
    @@all 
  end 
  
  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
  end 
 
  def songs 
    # The Artist class needs an instance method, #songs, that iterates through all songs and finds the songs that belong to that artist. Try using select to achieve this.
    Song.all.select do |x|
    # binding.pry
      x.artist == self
    end
  end 
  
  def genres 
    # The Artist class needs an instance method, #genres that iterates over that artist's songs and collects the genre of each song.
    Song.all.collect do |x|
      x.genre
    end
  end 
end