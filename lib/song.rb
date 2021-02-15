require 'pry'

class Song
  attr_accessor :name, :artist

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

  def self.new_by_filename(filename)
    MP3Importer.all.collect do |filename|
      artist_name = filename.split(" - ")[0]
      binding.pry
  end
end
