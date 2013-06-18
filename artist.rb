class Artist
  attr_accessor :name, :songs, :genres
  ARTISTS = [] # try using a constant => ARTIST_LIST

  def self.count_up(artist_instance)
    ARTISTS << artist_instance
  end

  def initialize
    Artist.count_up(self)
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

  def songs_count
    @songs.count
  end

  def add_song(song_instance)
    @songs = []
    @songs << song_instance
    @genres = []
    @genres << song_instance.genre
  end

  def genres
    @genres
  end
end