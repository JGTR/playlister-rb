class Artist
  attr_accessor :name, :songs, :genres
  ARTISTS = [] # try using a constant => ARTIST_LIST

  def initialize
    ARTISTS << self
    @songs = []
    @genres = []
  end

  def self.count
    ARTISTS.count
  end

  def self.all
    ARTISTS
  end

  def self.reset_artists
    ARTISTS.clear
  end

  reset_artists

  def songs_count
    @songs.count
  end

  def add_song(song_instance)
    @songs << song_instance
    song_instance.artist = self
    @genres << song_instance.genre
  end

  def genres
    @genres
  end
end