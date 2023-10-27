require "application_system_test_case"

class ReportersTest < ApplicationSystemTestCase
  setup do
    @reporter = reporters(:one)
  end

  test "visiting the index" do
    visit reporters_url
    assert_selector "h1", text: "Reporters"
  end

  test "should create reporter" do
    visit reporters_url
    click_on "New reporter"

    fill_in "Degree of welcome", with: @reporter.degree_of_welcome
    fill_in "Furigana", with: @reporter.furigana
    fill_in "Medium", with: @reporter.medium_id
    fill_in "Name", with: @reporter.name
    click_on "Create Reporter"

    assert_text "Reporter was successfully created"
    click_on "Back"
  end

  test "should update Reporter" do
    visit reporter_url(@reporter)
    click_on "Edit this reporter", match: :first

    fill_in "Degree of welcome", with: @reporter.degree_of_welcome
    fill_in "Furigana", with: @reporter.furigana
    fill_in "Medium", with: @reporter.medium_id
    fill_in "Name", with: @reporter.name
    click_on "Update Reporter"

    assert_text "Reporter was successfully updated"
    click_on "Back"
  end

  test "should destroy Reporter" do
    visit reporter_url(@reporter)
    click_on "Destroy this reporter", match: :first

    assert_text "Reporter was successfully destroyed"
  end
end
