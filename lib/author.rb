require '~/Development/code/ruby-objects-has-many-lab-wdf-000/lib/post.rb'
class Author 
	
	attr_accessor :name, :posts

	@@post_count = 0



	def initialize (name)
		@name = name
		@posts = []
	end

	def add_post ( post )
		@posts << post
		post.author = self
		@@post_count += 1
	end

	def add_post_by_title (string)
		tmp = Post.new(string)
		@posts << tmp
		tmp.author = self
		@@post_count += 1
	end

	def self.post_count
		@@post_count 
	end

end
