require File.dirname(__FILE__) + '/../test_helper'

class PageTest < ActiveSupport::TestCase

  test "should not be valid" do
    assert !Page.new.valid?
    assert !Page.new(:title => "Foo").valid?
    assert !Page.new(:slug => "Bar").valid?
    assert !Page.new(:title => "Foo", :slug => "Bar xpto").valid?
  end
  
  test "should be valid" do
    assert Page.new(:title => "Foo", :slug => "Bar").valid?
    assert Page.new(:title => "Foo", :slug => "foo_bar_123").valid?
  end
end
