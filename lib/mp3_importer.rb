require 'pry'
class MP3Importer
  attr_accessor :path

  @@all = []

  def initialize(path)
    @path = path
    save
  end

  def save
    @@all << self
  end

  def files
    file = MP3Importer.new
    @@all.collect
  end
end
