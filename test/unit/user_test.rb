require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "a new user is not an admin" do
    user = User.new
    assert user.is_admin? == false, "New user should not be an admin"
  end

  test "an admin user is recognised as an admin" do
    user = User.new(:name => "tyranja")
    assert user.is_admin? == true, "Tyranja should be our admin!"
  end
    
  test "a new user has no user_id" do
    user = User.new
    assert user.id == nil, "a new user should not have an id"
  end

  test "new user gets id when her text is saved" do
    user = User.new
    user.save
    assert user.id != nil, "a new user gets and id when her text is saved"
  end

end

