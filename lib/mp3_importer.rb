require 'pry'
class MP3Importer
  attr_accessor :path

  @@all = []
  
  def initialize(path)
    @path = path
    save
  end

  def files
  end
end
