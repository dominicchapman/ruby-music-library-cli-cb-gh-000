class Song

  @@all = []
  attr_accessor :name, :genre
  attr_reader :artist

  def initialize(name, artist = nil, genre = nil)
    @name = name
    self.artist = artist if artist
    @genre = genre
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

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end

end
