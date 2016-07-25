require 'pry'

class Artist

attr_accessor :name

	@@song_count = 0
 
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song) #takes an argument of song
    @songs << song #adds song to the artist's collection
    song.artist = self #tells the song that it belongs to that artist. This self is the artist.
    @@song_count += 1
  end
 
  

  def add_song_by_name(song) #this refers to the song name in the song rb
  	song = Song.new(song) #creates a new song 
  	@songs << song #adds that new song to the array of existing songs
  	song.artist = self #tells the song that it belongs to that artist
  	 @@song_count += 1
  end


  def self.song_count
  	@@song_count
  end


end