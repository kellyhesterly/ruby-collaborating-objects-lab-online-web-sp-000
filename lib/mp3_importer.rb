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
    @files = Dir.entries(path)
    @files.delete_if {|file| file == "." || file == ".."}
  end

  def import
    import = MP3Importer.new(path)
    # new_by_filename = 
  end
end
