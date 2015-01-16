# MyClass
class MyClass
  attr_accessor :posts

  def initialize
    @posts = []
  end
end

describe MyClass do
  subject do
    my_class = MyClass.new
    my_class.posts << 'foo'
    my_class
  end

  its('posts.first') { should eq 'foo' }
end
