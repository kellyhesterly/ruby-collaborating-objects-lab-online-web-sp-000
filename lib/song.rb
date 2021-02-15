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
      split_name = filename.split(" - ")
      song = self.new(split_name[1])
      artist = Artist.find_or_create_by_name(split_name[0])
      binding.pry
    end
  end
end
