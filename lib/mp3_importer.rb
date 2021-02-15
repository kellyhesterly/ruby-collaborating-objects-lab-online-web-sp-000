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
    @@all.collect
  end
end
