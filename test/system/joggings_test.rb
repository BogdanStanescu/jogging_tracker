require "application_system_test_case"

class JoggingsTest < ApplicationSystemTestCase
  setup do
    @jogging = joggings(:one)
  end

  test "visiting the index" do
    visit joggings_url
    assert_selector "h1", text: "Joggings"
  end

  test "creating a Jogging" do
    visit joggings_url
    click_on "New Jogging"

    fill_in "Date", with: @jogging.date
    fill_in "Distance", with: @jogging.distance
    fill_in "First name", with: @jogging.first_name
    fill_in "Last name", with: @jogging.last_name
    fill_in "Time", with: @jogging.time
    click_on "Create Jogging"

    assert_text "Jogging was successfully created"
    click_on "Back"
  end

  test "updating a Jogging" do
    visit joggings_url
    click_on "Edit", match: :first

    fill_in "Date", with: @jogging.date
    fill_in "Distance", with: @jogging.distance
    fill_in "First name", with: @jogging.first_name
    fill_in "Last name", with: @jogging.last_name
    fill_in "Time", with: @jogging.time
    click_on "Update Jogging"

    assert_text "Jogging was successfully updated"
    click_on "Back"
  end

  test "destroying a Jogging" do
    visit joggings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jogging was successfully destroyed"
  end
end
