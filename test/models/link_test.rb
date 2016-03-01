require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  test "link is valid with correct attributes" do
    link = links(:one)
    assert_equal "http://www.opensnow.com", link.url
    assert_equal "Skiing", link.title
    assert_equal 1, link.user_id
  end

  test "link is invalid without title" do
    link = links(:two)
    link.title = nil
    refute link.valid?
  end

  test "link is invalid without url" do
    link = links(:two)
    link.url = nil
    refute link.valid?
  end

  test "link is invalid without user_id" do
    link = links(:one)
    link.user_id = nil
    refute link.valid?
  end
end
