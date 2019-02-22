class Comment
  @@comments = []

  def initialize(message)
    @message = message
    @@comments << self
  end

  def self.all
    @@comments
  end
end
