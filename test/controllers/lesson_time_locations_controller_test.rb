require "test_helper"

class LessonTimeLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lesson_time_location = lesson_time_locations(:one)
  end

  test "should get index" do
    get lesson_time_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_lesson_time_location_url
    assert_response :success
  end

  test "should create lesson_time_location" do
    assert_difference("LessonTimeLocation.count") do
      post lesson_time_locations_url, params: { lesson_time_location: { end_time: @lesson_time_location.end_time, lesson_id: @lesson_time_location.lesson_id, location_id: @lesson_time_location.location_id, start_time: @lesson_time_location.start_time, week_day: @lesson_time_location.week_day } }
    end

    assert_redirected_to lesson_time_location_url(LessonTimeLocation.last)
  end

  test "should show lesson_time_location" do
    get lesson_time_location_url(@lesson_time_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_lesson_time_location_url(@lesson_time_location)
    assert_response :success
  end

  test "should update lesson_time_location" do
    patch lesson_time_location_url(@lesson_time_location), params: { lesson_time_location: { end_time: @lesson_time_location.end_time, lesson_id: @lesson_time_location.lesson_id, location_id: @lesson_time_location.location_id, start_time: @lesson_time_location.start_time, week_day: @lesson_time_location.week_day } }
    assert_redirected_to lesson_time_location_url(@lesson_time_location)
  end

  test "should destroy lesson_time_location" do
    assert_difference("LessonTimeLocation.count", -1) do
      delete lesson_time_location_url(@lesson_time_location)
    end

    assert_redirected_to lesson_time_locations_url
  end
end
