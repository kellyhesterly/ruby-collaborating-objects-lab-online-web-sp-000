require 'pry'
class MP3Importer
  attr_accessor :path

  @@all = []

  def initialize(filename)
    @path = filename
    save
  end

  def save
    @@all << self
  end

  def files
    @files = Dir.entries(path)
    @files.delete_if {|file| file == "." || file == ".."}
  end

  def import(filename)
  end
end
