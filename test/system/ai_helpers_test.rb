require "application_system_test_case"

class AiHelpersTest < ApplicationSystemTestCase
  setup do
    @ai_helper = ai_helpers(:one)
  end

  test "visiting the index" do
    visit ai_helpers_url
    assert_selector "h1", text: "Ai helpers"
  end

  test "should create ai helper" do
    visit ai_helpers_url
    click_on "New ai helper"

    fill_in "Helper type", with: @ai_helper.Helper_Type
    fill_in "Name", with: @ai_helper.Name
    fill_in "Twitter", with: @ai_helper.Twitter
    click_on "Create Ai helper"

    assert_text "Ai helper was successfully created"
    click_on "Back"
  end

  test "should update Ai helper" do
    visit ai_helper_url(@ai_helper)
    click_on "Edit this ai helper", match: :first

    fill_in "Helper type", with: @ai_helper.Helper_Type
    fill_in "Name", with: @ai_helper.Name
    fill_in "Twitter", with: @ai_helper.Twitter
    click_on "Update Ai helper"

    assert_text "Ai helper was successfully updated"
    click_on "Back"
  end

  test "should destroy Ai helper" do
    visit ai_helper_url(@ai_helper)
    click_on "Destroy this ai helper", match: :first

    assert_text "Ai helper was successfully destroyed"
  end
end
