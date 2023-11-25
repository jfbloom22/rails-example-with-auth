require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "should not save user without email" do
    user = User.new
    assert_not user.save, "Saved the user without an email"
  end

  test "should report error" do
    # some_undefined_variable is not defined elsewhere in the test case
    assert_raises(NameError) do
      some_undefined_variable
    end
  end
  test "should not save user with invalid password" do
    user = User.new(password: "short")
    assert_not user.save, "Saved the user with a password that does not meet the requirements"
  end
end
