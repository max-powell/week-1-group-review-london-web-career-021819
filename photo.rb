class Photo
  attr_accessor :user

  @@photos = []

  def initialize
    @@photos << self
  end

  def self.all
    @@photos
  end

  def make_comment(message)
    comment = Comment.new(message)
    comment.photo = self
  end

  def comments
    Comment.all.select {|comment| comment.photo == self}
  end
end
