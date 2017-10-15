
class MusicLibraryController

  def initialize(filepath)
    MusicImporter.new(filepath).import
  end

end
