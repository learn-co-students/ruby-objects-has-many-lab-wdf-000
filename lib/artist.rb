# require 'pry'

class Artist

  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
    @artist = self
  end

  def songs
    @songs
  end

  def add_song(songs_name)
    @songs << songs_name
    songs_name.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    @@song_count += 1 
    song.artist = self
  end

  def self.song_count
    @@song_count
  end
end

# binding.pry
