require "application_system_test_case"

class FuelOptionsTest < ApplicationSystemTestCase
  setup do
    @fuel_option = fuel_options(:one)
  end

  test "visiting the index" do
    visit fuel_options_url
    assert_selector "h1", text: "Fuel options"
  end

  test "should create fuel option" do
    visit fuel_options_url
    click_on "New fuel option"

    click_on "Create Fuel option"

    assert_text "Fuel option was successfully created"
    click_on "Back"
  end

  test "should update Fuel option" do
    visit fuel_option_url(@fuel_option)
    click_on "Edit this fuel option", match: :first

    click_on "Update Fuel option"

    assert_text "Fuel option was successfully updated"
    click_on "Back"
  end

  test "should destroy Fuel option" do
    visit fuel_option_url(@fuel_option)
    click_on "Destroy this fuel option", match: :first

    assert_text "Fuel option was successfully destroyed"
  end
end
