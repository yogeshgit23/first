require "application_system_test_case"

class ValidatesTest < ApplicationSystemTestCase
  setup do
    @validate = validates(:one)
  end

  test "visiting the index" do
    visit validates_url
    assert_selector "h1", text: "Validates"
  end

  test "creating a Validate" do
    visit validates_url
    click_on "New Validate"

    fill_in "City", with: @validate.city
    fill_in "Email", with: @validate.email
    fill_in "Name", with: @validate.name
    fill_in "Password", with: @validate.password
    fill_in "Pincode", with: @validate.pincode
    fill_in "State", with: @validate.state
    click_on "Create Validate"

    assert_text "Validate was successfully created"
    click_on "Back"
  end

  test "updating a Validate" do
    visit validates_url
    click_on "Edit", match: :first

    fill_in "City", with: @validate.city
    fill_in "Email", with: @validate.email
    fill_in "Name", with: @validate.name
    fill_in "Password", with: @validate.password
    fill_in "Pincode", with: @validate.pincode
    fill_in "State", with: @validate.state
    click_on "Update Validate"

    assert_text "Validate was successfully updated"
    click_on "Back"
  end

  test "destroying a Validate" do
    visit validates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Validate was successfully destroyed"
  end
end
