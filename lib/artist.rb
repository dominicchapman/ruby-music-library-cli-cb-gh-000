class Artist

  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
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

  def self.create(artist_name)
    artist = self.new(artist_name)
    artist.save
    artist
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self unless song.artist
    @songs << song
  end

end
