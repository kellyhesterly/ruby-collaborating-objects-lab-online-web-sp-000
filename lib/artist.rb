require 'pry'

class Artist
  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.find_or_create_by_name(name)
    self.find(name) || self.create_by_name(name)
  end

  def self.find(name)
    Artist.all.detect {|artist| artist.name == name}
  end

  def self.create_by_name(name)
    artist = Artist.new(name)
  end

  def print_songs
    Song.all.select do |song|
    song.artist == self
    song
  end
  end
    # unless name == self
    # name == self
    # if name == self
    #   name
    # else
    #   artist = Artist.new(name)
      # end
end
