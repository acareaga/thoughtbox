require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user is valid" do
    user = users(:one)
    assert_equal "steve@apple.com", user.email_address
    assert_equal "pass", user.password_digest
  end

  test "user is invalid without email address" do
    user = users(:two)
    user.email_address = nil
    refute user.valid?
  end

  test "user is invalid without password" do
    user = users(:two)
    user.password = nil
    refute user.valid?
  end
end
