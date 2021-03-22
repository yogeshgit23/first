require "test_helper"

class ValidatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @validate = validates(:one)
  end

  test "should get index" do
    get validates_url
    assert_response :success
  end

  test "should get new" do
    get new_validate_url
    assert_response :success
  end

  test "should create validate" do
    assert_difference('Validate.count') do
      post validates_url, params: { validate: { city: @validate.city, email: @validate.email, name: @validate.name, password: @validate.password, pincode: @validate.pincode, state: @validate.state } }
    end

    assert_redirected_to validate_url(Validate.last)
  end

  test "should show validate" do
    get validate_url(@validate)
    assert_response :success
  end

  test "should get edit" do
    get edit_validate_url(@validate)
    assert_response :success
  end

  test "should update validate" do
    patch validate_url(@validate), params: { validate: { city: @validate.city, email: @validate.email, name: @validate.name, password: @validate.password, pincode: @validate.pincode, state: @validate.state } }
    assert_redirected_to validate_url(@validate)
  end

  test "should destroy validate" do
    assert_difference('Validate.count', -1) do
      delete validate_url(@validate)
    end

    assert_redirected_to validates_url
  end
end
