class Post

  attr_accessor :title, :author

  def initialize(name)
    @title = name
  end

  def author_name
    #Let's use .nil? to check if self.author object is nil before trying to access the name
    self.author.nil? ? nil : self.author.name
   end
end
