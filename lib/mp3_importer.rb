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
    @files = DIR.entries(@path)
  end
end
