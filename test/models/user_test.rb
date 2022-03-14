require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  def setup
    @user = User.new(email:"q@q.com", password:"111111", password_confirmation:"111111")
  end

  test "should be valid" do
    assert @user.valid?
  end
end
