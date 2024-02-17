require "application_system_test_case"

class LessonTimeLocationsTest < ApplicationSystemTestCase
  setup do
    @lesson_time_location = lesson_time_locations(:one)
  end

  test "visiting the index" do
    visit lesson_time_locations_url
    assert_selector "h1", text: "Lesson time locations"
  end

  test "should create lesson time location" do
    visit lesson_time_locations_url
    click_on "New lesson time location"

    fill_in "End time", with: @lesson_time_location.end_time
    fill_in "Lesson", with: @lesson_time_location.lesson_id
    fill_in "Location", with: @lesson_time_location.location_id
    fill_in "Start time", with: @lesson_time_location.start_time
    fill_in "Week day", with: @lesson_time_location.week_day
    click_on "Create Lesson time location"

    assert_text "Lesson time location was successfully created"
    click_on "Back"
  end

  test "should update Lesson time location" do
    visit lesson_time_location_url(@lesson_time_location)
    click_on "Edit this lesson time location", match: :first

    fill_in "End time", with: @lesson_time_location.end_time
    fill_in "Lesson", with: @lesson_time_location.lesson_id
    fill_in "Location", with: @lesson_time_location.location_id
    fill_in "Start time", with: @lesson_time_location.start_time
    fill_in "Week day", with: @lesson_time_location.week_day
    click_on "Update Lesson time location"

    assert_text "Lesson time location was successfully updated"
    click_on "Back"
  end

  test "should destroy Lesson time location" do
    visit lesson_time_location_url(@lesson_time_location)
    click_on "Destroy this lesson time location", match: :first

    assert_text "Lesson time location was successfully destroyed"
  end
end
