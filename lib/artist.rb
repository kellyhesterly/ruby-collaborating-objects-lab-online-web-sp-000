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
    Artist.all.include? do |artist|
      artist.name == self
    end
      artist = Artist.new(name)
        # if artist.name == self
        #   artist.name
        # else
        #   artist = Artist.new(name)
        end
    end
  end
end
