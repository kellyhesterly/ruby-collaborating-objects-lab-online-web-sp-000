require 'pry'
class MP3Importer
  attr_accessor :path

  @@all = []
  
  def initialize(path)
    @path = path
  end

  def files
  end
end
