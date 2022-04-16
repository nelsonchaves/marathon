require "test_helper"

class FuelOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fuel_option = fuel_options(:one)
  end

  test "should get index" do
    get fuel_options_url
    assert_response :success
  end

  test "should get new" do
    get new_fuel_option_url
    assert_response :success
  end

  test "should create fuel_option" do
    assert_difference("FuelOption.count") do
      post fuel_options_url, params: { fuel_option: {  } }
    end

    assert_redirected_to fuel_option_url(FuelOption.last)
  end

  test "should show fuel_option" do
    get fuel_option_url(@fuel_option)
    assert_response :success
  end

  test "should get edit" do
    get edit_fuel_option_url(@fuel_option)
    assert_response :success
  end

  test "should update fuel_option" do
    patch fuel_option_url(@fuel_option), params: { fuel_option: {  } }
    assert_redirected_to fuel_option_url(@fuel_option)
  end

  test "should destroy fuel_option" do
    assert_difference("FuelOption.count", -1) do
      delete fuel_option_url(@fuel_option)
    end

    assert_redirected_to fuel_options_url
  end
end
