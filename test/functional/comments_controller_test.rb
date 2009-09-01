require File.dirname(__FILE__) + '/../test_helper'

class CommentsControllerTest < ActionController::TestCase
  fixtures :posts, :pages
  
  test "should create comment and redirect to post without javascript" do
    post :create, :post_id => posts(:one).to_param, :comment => { :body => 'nice!' }
    assert_redirected_to post_url(posts(:one))
    assert_equal 'nice!', posts(:one).comments.last.body
  end
  
  test "should create comment and render RJS template for ajax" do
    post :create, :format => 'js', :post_id => posts(:one).to_param, :comment => { :body => 'nice!' }
    assert_template 'create.js.rjs'
    assert_equal 'nice!', posts(:one).comments.last.body
  end

  test "should create comment and redirect to page without javascript" do
    post :create, :page_id => pages(:one).to_param, :comment => { :body => 'nice!' }
    assert_redirected_to page_url(pages(:one))
    assert_equal 'nice!', pages(:one).comments.last.body
  end
end
