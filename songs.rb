class Song
  attr_accessor :name, :genre, :artist
  SONGS = []

  def initialize
    SONGS << self
  end

  def self.all
    SONGS
  end

  def self.reset_songs
    SONGS.clear
  end

  def genre=(genre)
    @genre = genre
    genre.songs << self
  end

end