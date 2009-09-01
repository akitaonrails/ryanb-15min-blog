require File.dirname(__FILE__) + '/../test_helper'

class PostTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "should be invalid" do
    @post = Post.new
    assert !@post.valid?
    
    @post = Post.new :title => "Foo"
    assert !@post.valid?
    
    @post = Post.new :body => "Bar"
    assert !@post.valid?
  end
  
  test "should be valid" do
    @post = Post.new :title => "Foo", :body => "Bar"
    assert @post.valid?
  end
end
