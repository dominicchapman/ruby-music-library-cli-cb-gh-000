
class MusicLibraryController

  def initialize(filepath = './db/mp3s')
    MusicImporter.new(filepath).import
  end

end
