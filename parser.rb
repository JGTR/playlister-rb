load "artist.rb"
load "songs.rb"
load "genres.rb"
require "pry"

def parse_song_for_name(str)
  str.split(" - ").last.split("[").first
end

def parse_song_for_name(string)
  string.split(" - ")[1].split("[")[0].strip
end

def parse_song_for_genre(string)
  string.split(" - ")[1].split("[").last.split("]").first.strip
end

def parse_song_for_artist(string)
end

def parse_for_artist_name(string)
  string.split(" - ")[0].strip
end

def find_artist(artist_name)
  Artist.all.select { |art| 
    art.name == parse_for_artist_name(artist_name)}[0] 
end

def find_genre(genre_string)
  Genre.all.select { |genre_object| 
    genre_object.name == genre_string
  }

end

big_array = Dir.entries("data")
big_array = big_array.slice(2, big_array.length)

def parse_strings(array)
  array.each do |string|
    if Artist.all.any? {|artist| artist.name == parse_for_artist_name(string)} 

      artist = find_artist(parse_for_artist_name(string))
      
      song = Song.new
      song.name = parse_song_for_name(string)
    
      # if find_genre(parse_song_for_genre(string))
      #   puts find_genre(parse_song_for_genre(string))
      #   find_genre(parse_song_for_genre(string))[0].songs << song
      # else
        genre_object = Genre.new
        genre_object.name = parse_song_for_genre(string)
        song.genre = genre_object
      # end

      artist.add_song(song)

    else
      # create artist
      artist = Artist.new 
      artist.name = parse_for_artist_name(string)

      song = Song.new
      song.name = parse_song_for_name(string)
      

      genre_object = Genre.new
      genre_object.name = parse_song_for_genre(string)
      song.genre = genre_object
      
      artist.add_song(song)
    end
    # puts "#{artist.name} + #{artist.songs.size} + #{artist.genres.size}"
  end
end


parse_strings(big_array)

# binding.pry


# pseudo code

# big big_array

#one loop
# check if Arist exists in Artist class
  # if not, Artist is new, do the following:
    # Create new Artist and associate Genre and associate songs
  # if Artist is not new,
    # Associate Genre and Song ( but dont create new Artist)

  # end

  # => Unique artists, genres, and songs already associated