require File.dirname(__FILE__) + '/../test_helper'

class CommentTest < ActiveSupport::TestCase
  fixtures :posts
  
  test "should be valid" do
    @post = posts(:one)
    assert @post.comments.build.valid?
  end
end
