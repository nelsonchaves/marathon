require "test_helper"

class FuelCalculatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fuel_calculator = fuel_calculators(:one)
  end

  test "should get index" do
    get fuel_calculators_url
    assert_response :success
  end

  test "should get new" do
    get new_fuel_calculator_url
    assert_response :success
  end

  test "should create fuel_calculator" do
    assert_difference("FuelCalculator.count") do
      post fuel_calculators_url, params: { fuel_calculator: { distance: @fuel_calculator.distance, elevation: @fuel_calculator.elevation, estimate_start: @fuel_calculator.estimate_start, estimate_time: @fuel_calculator.estimate_time, temperature: @fuel_calculator.temperature, weight: @fuel_calculator.weight } }
    end

    assert_redirected_to fuel_calculator_url(FuelCalculator.last)
  end

  test "should show fuel_calculator" do
    get fuel_calculator_url(@fuel_calculator)
    assert_response :success
  end

  test "should get edit" do
    get edit_fuel_calculator_url(@fuel_calculator)
    assert_response :success
  end

  test "should update fuel_calculator" do
    patch fuel_calculator_url(@fuel_calculator), params: { fuel_calculator: { distance: @fuel_calculator.distance, elevation: @fuel_calculator.elevation, estimate_start: @fuel_calculator.estimate_start, estimate_time: @fuel_calculator.estimate_time, temperature: @fuel_calculator.temperature, weight: @fuel_calculator.weight } }
    assert_redirected_to fuel_calculator_url(@fuel_calculator)
  end

  test "should destroy fuel_calculator" do
    assert_difference("FuelCalculator.count", -1) do
      delete fuel_calculator_url(@fuel_calculator)
    end

    assert_redirected_to fuel_calculators_url
  end
end
