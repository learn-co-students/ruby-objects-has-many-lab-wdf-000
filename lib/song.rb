class Song
  attr_accessor :artist  

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def artist
    @artist
  end

  def artist_name
    if @artist
      @artist.name
    else
      nil
    end
  end
end
