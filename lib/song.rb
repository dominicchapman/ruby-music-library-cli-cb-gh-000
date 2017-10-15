class Song

  @@all = []
  attr_accessor :name
  attr_reader :artist

  def initialize(name, artist = nil)
    @name = name
    @artist = artist
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(song_name)
    song = self.new(song_name)
    song.save
    song
  end

  def artist=
    
  end

end
