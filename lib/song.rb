class Song
	attr_accessor :artist, :name

	def initialize(name)
		@name = name
	end

	def artist_name
		if self.artist != nil
			self.artist.name
		else
			self.artist
		end
	end
end