class Song
  attr_accessor :name, :artist

  def initialize(new_name)
    self.name = new_name
  end

  def artist_name
    if !artist
      return nil
    else
      artist.name
    end
  end


end
