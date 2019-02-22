class Photo
  attr_accessor :user, :comments

  @@photos = []

  def initialize
    @@photos << self
    @comments = []
  end

  def self.all
    @@photos
  end

  def make_comment(message)
    comment = Comment.new(message)
    @comments << comment
  end
end
