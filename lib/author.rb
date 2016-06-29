class Author
	attr_accessor :name, :posts

	@@post_count = 0

	def initialize(name)
		@posts = []
		@name = name
	end

	def add_post(post)
		posts << post
		@@post_count += 1
		post.author = self
	end

	def author_name
		name
	end

	def add_post_by_title(title)
		title = Post.new(title)
		title.author = self
		add_post(title)
	end

	def self.post_count
		@@post_count
	end
end