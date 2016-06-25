class Post

  attr_accessor :author
  attr_reader :title

  def initialize(title)
    @title = title
    @author = nil
  end

  def author_name
    self.author ? self.author.name : nil
  end

end
