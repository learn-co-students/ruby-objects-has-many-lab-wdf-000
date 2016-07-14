class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    #Let's use .nil? to check if self.artist object is nil before trying to access the name
    self.artist.nil? ? nil : self.artist.name
   end

end
