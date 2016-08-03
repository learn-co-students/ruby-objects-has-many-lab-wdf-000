class Post
  attr_accessor :title, :author

  def initialize(new_title)
    self.title = new_title
  end

  def author_name
    if !author
      return nil
    else
      author.name
    end
  end
end
