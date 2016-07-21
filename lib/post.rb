class Post

  attr_accessor :title, :author

  def initialize(post)
    @title = post
  end

  def author_name
    if(self.author != nil)
      self.author.name
    else
      nil
    end
  end

end