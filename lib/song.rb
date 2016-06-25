class Song
  attr_accessor :artist   #Artist object
  attr_reader :name

  def initialize(name)
    @name = name
    @artist = nil
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

end
