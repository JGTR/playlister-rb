class Song
  attr_accessor :name, :genre
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

end