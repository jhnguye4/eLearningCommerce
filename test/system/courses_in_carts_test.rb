require "application_system_test_case"

class CoursesInCartsTest < ApplicationSystemTestCase
  setup do
    @courses_in_cart = courses_in_carts(:one)
  end

  test "visiting the index" do
    visit courses_in_carts_url
    assert_selector "h1", text: "Courses In Carts"
  end

  test "creating a Courses in cart" do
    visit courses_in_carts_url
    click_on "New Courses In Cart"

    fill_in "Cart", with: @courses_in_cart.cart
    fill_in "Courses", with: @courses_in_cart.courses_id
    click_on "Create Courses in cart"

    assert_text "Courses in cart was successfully created"
    click_on "Back"
  end

  test "updating a Courses in cart" do
    visit courses_in_carts_url
    click_on "Edit", match: :first

    fill_in "Cart", with: @courses_in_cart.cart
    fill_in "Courses", with: @courses_in_cart.courses_id
    click_on "Update Courses in cart"

    assert_text "Courses in cart was successfully updated"
    click_on "Back"
  end

  test "destroying a Courses in cart" do
    visit courses_in_carts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Courses in cart was successfully destroyed"
  end
end
