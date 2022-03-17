require "application_system_test_case"

class FuelCalculatorsTest < ApplicationSystemTestCase
  setup do
    @fuel_calculator = fuel_calculators(:one)
  end

  test "visiting the index" do
    visit fuel_calculators_url
    assert_selector "h1", text: "Fuel calculators"
  end

  test "should create fuel calculator" do
    visit fuel_calculators_url
    click_on "New fuel calculator"

    fill_in "Distance", with: @fuel_calculator.distance
    fill_in "Elevation", with: @fuel_calculator.elevation
    fill_in "Estimate start", with: @fuel_calculator.estimate_start
    fill_in "Estimate time", with: @fuel_calculator.estimate_time
    fill_in "Temperature", with: @fuel_calculator.temperature
    fill_in "Weight", with: @fuel_calculator.weight
    click_on "Create Fuel calculator"

    assert_text "Fuel calculator was successfully created"
    click_on "Back"
  end

  test "should update Fuel calculator" do
    visit fuel_calculator_url(@fuel_calculator)
    click_on "Edit this fuel calculator", match: :first

    fill_in "Distance", with: @fuel_calculator.distance
    fill_in "Elevation", with: @fuel_calculator.elevation
    fill_in "Estimate start", with: @fuel_calculator.estimate_start
    fill_in "Estimate time", with: @fuel_calculator.estimate_time
    fill_in "Temperature", with: @fuel_calculator.temperature
    fill_in "Weight", with: @fuel_calculator.weight
    click_on "Update Fuel calculator"

    assert_text "Fuel calculator was successfully updated"
    click_on "Back"
  end

  test "should destroy Fuel calculator" do
    visit fuel_calculator_url(@fuel_calculator)
    click_on "Destroy this fuel calculator", match: :first

    assert_text "Fuel calculator was successfully destroyed"
  end
end
