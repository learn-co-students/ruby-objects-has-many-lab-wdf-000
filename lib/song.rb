class Song

  attr_accessor :name, :artist

  def initialize(s_title)
    @name = s_title
  end

  def artist_name
    if(self.artist != nil)
      self.artist.name
    else
      nil
    end
  end

end