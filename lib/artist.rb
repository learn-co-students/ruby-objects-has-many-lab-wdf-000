class Artist
  attr_accessor :name, :songs, :song_count

  @@song_count = 0

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def add_song(new_song)
    @@song_count += 1
    self.songs << new_song
    new_song.artist = self
  end

  def add_song_by_name(name)
    @@song_count += 1
    new_song = Song.new(name)
    self.songs << new_song
    new_song.artist = self
  end

  def self.song_count
    @@song_count
  end

end
