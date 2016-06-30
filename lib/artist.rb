require '~/Development/code/ruby-objects-has-many-lab-wdf-000/lib/song.rb'

class Artist 
	attr_accessor :name, :songs
	@@song_count = 0
	def initialize(name)
		@name = name
		@songs = []
	end

	def add_song (arg)
		@songs << arg
		arg.artist = self
		@@song_count +=1
	end

	def add_song_by_name (string)
		tmp = Song.new(string)
		@songs << tmp
		tmp.artist = self
		@@song_count +=1
	end
	
	def self.song_count
		@@song_count
	end	
end


#adel = Artist.new("adel")
#song1 = Song.new("song1")
#adel.add_song_by_name("song2")
#adel.add_song(song1)
#
#puts adel.songs[0].name

