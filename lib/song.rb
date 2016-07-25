require 'pry'
class Song

	attr_accessor :name, :artist #this says that song class belongs to the artist class


	def initialize(name) #initializing a new song *name refers to the song's title
		@name = name
	end

	def artist_name
		self.artist.name unless self.artist.nil?
	end

end