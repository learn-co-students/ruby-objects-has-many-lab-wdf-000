class Post

attr_accessor :title, :author, :author_name

def initialize(title)
  @title = title
end

def author=(author)
  @author = author
  @author_name = author.name
end

end
