# require 'pry'

class Song

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name  
    if artist == nil
      return nil
    else
      artist.name
    end
  end

  #   artist.name || artist.name == nil


end

# binding.pry
