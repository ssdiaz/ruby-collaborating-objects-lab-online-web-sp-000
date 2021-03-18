class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
  #  Dir "#{path}/.mp3"

    #Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
    files = Dir["#{path}/*.mp3"]
    files.split("/")[-1]
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end

end
# learn spec/mp3_importer_spec.rb
