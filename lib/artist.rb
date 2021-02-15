require 'pry'

class Artist
  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    # song = Song.new
    # song.artist = self
    @songs << song

    # binding.pry
  end

  def songs
    Song.all.collect {|song| song.artist == self}
  end
end
