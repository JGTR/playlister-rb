class Genre
  attr_accessor :name, :songs, :artists

  GENRELIST= []
  
  def initialize
    GENRELIST << self
  end

  def self.all
    GENRELIST
  end


  def self.reset_genres
    GENRELIST.clear
  end

  def songs
    Song.all.select do |x|
     x.genre.name == self.name if x.genre
    end
  end

  def artists
    Artist.all.select do |artist|
        if artist.songs
          artist.songs.any? do |x| 
            if x.genre
              x.genre.name == @name
            end
          end
        end
      end
  end
end