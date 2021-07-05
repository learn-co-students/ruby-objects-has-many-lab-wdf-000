class Author
  attr_accessor :name, :posts, :post_count

  @@post_count = 0

  def initialize(new_name)
    self.name = new_name
    self.posts = []
  end

  def add_post(new_post)
    @@post_count += 1
    self.posts << new_post
    new_post.author = self
  end

  def add_post_by_title(title)
    @@post_count += 1
    new_post = Post.new(title)
    self.posts << new_post
    new_post.author = self
  end

  def self.post_count
    @@post_count
  end

end
