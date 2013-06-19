load "artist.rb"
load "songs.rb"
load "genres.rb"
load "parser.rb"
require "pry"

# jukebox.rb

class Jukebox
  attr_accessor :songs

  def initialize
    # @songs = songs
  end


  # list, play, help, exit
  def list
    i = 1
    songs.each do |song|
      puts "#{i} #{song}"
      i = i+1
    end
  end

  def play
    selection = 0
    unless (selection >= 1) && (selection <= songs.length)
      puts "Please enter the numerical selection of your song."
      selection = gets.chomp
      selection = selection.to_i - 1
    end
    puts "Now playing: #{songs[selection]}"
  end

  def helpme
    puts "Welcome to jukebox."
    puts "Do you want to browse by Artist or Genre?"
  end
end


# songs = Songs.all

jukebox = Jukebox.new

jukebox_on = true
entry = 0

while jukebox_on 
  jukebox.helpme
  entry = gets.strip.downcase
  case entry
    when "artist"
      #print out Artists
      Artist.all.each_with_index do |artist, index|
        puts "#{index+1}: #{artist.name}"
      end

      entry2 = gets.strip.downcase

    when "genre"
      # print out Genres
      genre_array = Genre.all.collect do |genre|
       genre.name 
      end.uniq

      puts genre_array.uniq

  end
end


  # case entry
  #   when "list"
  #     jukebox.list
  #   when "play"
  #     jukebox.play
  #   when "help"
  #     jukebox.helpme
  #   when "exit"
  #     jukebox_on = false
  #   else
  #     jukebox.helpme
  # end
