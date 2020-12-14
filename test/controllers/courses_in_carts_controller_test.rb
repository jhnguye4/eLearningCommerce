require 'test_helper'

class CoursesInCartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @courses_in_cart = courses_in_carts(:one)
  end

  test "should get index" do
    get courses_in_carts_url
    assert_response :success
  end

  test "should get new" do
    get new_courses_in_cart_url
    assert_response :success
  end

  test "should create courses_in_cart" do
    assert_difference('CoursesInCart.count') do
      post courses_in_carts_url, params: { courses_in_cart: { cart: @courses_in_cart.cart, courses_id: @courses_in_cart.courses_id } }
    end

    assert_redirected_to courses_in_cart_url(CoursesInCart.last)
  end

  test "should show courses_in_cart" do
    get courses_in_cart_url(@courses_in_cart)
    assert_response :success
  end

  test "should get edit" do
    get edit_courses_in_cart_url(@courses_in_cart)
    assert_response :success
  end

  test "should update courses_in_cart" do
    patch courses_in_cart_url(@courses_in_cart), params: { courses_in_cart: { cart: @courses_in_cart.cart, courses_id: @courses_in_cart.courses_id } }
    assert_redirected_to courses_in_cart_url(@courses_in_cart)
  end

  test "should destroy courses_in_cart" do
    assert_difference('CoursesInCart.count', -1) do
      delete courses_in_cart_url(@courses_in_cart)
    end

    assert_redirected_to courses_in_carts_url
  end
end
