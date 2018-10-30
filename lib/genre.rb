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
    Song.all.select do |x|
      x.genre = self
    end
  end
  
  def artists
    Song.all.collect do |x|
      x.artist
    end
  end
end