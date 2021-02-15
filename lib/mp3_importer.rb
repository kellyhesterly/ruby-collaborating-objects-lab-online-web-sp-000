require 'pry'
class MP3Importer
  attr_accessor :path

  @@all = []

  def initialize(filepath)
    @path = filepath
    save
  end

  def save
    @@all << self
  end

  def files
    music_path =
    file = MP3Importer.new(music_path)
    binding.pry
    @@all.collect
  end
end
