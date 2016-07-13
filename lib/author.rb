class Author
  attr_accessor :name, :post
  @@post_count = 0
  @@post_total = []

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    @@post_total << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @posts << post
    @@post_total << post
  end

  def self.post_count
    @@post_count = @@post_total.count
  end

end