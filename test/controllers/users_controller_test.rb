require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:user_6)
  end

  test "should get index" do
    current_user = @user
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create new user" do
    assert_difference('User.count') do
      # post users_url, params: { user: { addr: '123 User St', email: 'foo@example.com', name: 'bar', password: 'password', phone_num: '1234567' } }
      post users_url, params: { user: { addr: @user.addr, email: @user.email, name: @user.name, password: 'new_users\'_password', phone_num: @user.phone_num } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    current_user = @user
    get edit_user_url(current_user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { addr: '321 User Ave', email: 'foo@example.com', name: 'bar', password: 'password', phone_num: '1234567' } }
    assert_redirected_to student_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
