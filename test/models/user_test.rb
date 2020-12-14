require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "cant save new user: must have required fields" do
    user = User.new
    assert_not user.save
  end

  test "save new user" do
    user = User.new
    user.name      = 'Justin'
    user.email     = 'jkirsch@ncsu.edu'
    user.password  = 'password'
    user.phone_num = '2157381468'
    user.addr      = '517 OODD St.'

    assert user.save
  end

end


