class Song
  attr_accessor :name, :genre, :artist

  def initialize(name)
    @name = name
    @genre = genre
    @artist = artist
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

end