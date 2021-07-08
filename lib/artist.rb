class Artist
  attr_accessor :name, :song
  @@song_count = 0
  @@song_total = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@song_total << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @songs << song
    @@song_total << song
  end

  def songs
    @songs
  end

  def self.song_count
    @@song_count = @@song_total.count
  end

end