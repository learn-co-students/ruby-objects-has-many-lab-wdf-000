require 'pry'
class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  def author_name
    author ? self.author.name : nil
    # binding.pry
  end

end