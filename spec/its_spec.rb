# User
class User
  attr_accessor :posts

  def initialize
    @posts = []
  end
end

describe User do
  subject do
    user = User.new
    user.posts << 'foo'
    user
  end

  its('posts.first') { should eq 'foo' }
end
