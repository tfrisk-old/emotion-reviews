require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @admin_user = users(:admin)
    @regular_user = users(:joe)
  end

  test "should be valid" do
    assert @regular_user.valid?
  end

  test "email should be present" do
    @regular_user.email = nil
    assert_not @regular_user.valid?
  end
end
