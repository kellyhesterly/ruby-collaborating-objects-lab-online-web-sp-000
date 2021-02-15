require 'pry'

class Artist
  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    # @songs
    Song.all.select {|song| song.artist == self}
  end
end
