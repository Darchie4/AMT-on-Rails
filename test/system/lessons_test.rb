require "application_system_test_case"

class LessonsTest < ApplicationSystemTestCase
  setup do
    @lesson = lessons(:one)
  end

  test "visiting the index" do
    visit lessons_url
    assert_selector "h1", text: "Lessons"
  end

  test "should create lesson" do
    visit lessons_url
    click_on "New lesson"

    fill_in "Cover img path", with: @lesson.cover_img_path
    fill_in "Description", with: @lesson.description
    fill_in "Max age", with: @lesson.max_age
    fill_in "Min age", with: @lesson.min_age
    fill_in "Name", with: @lesson.name
    fill_in "Price", with: @lesson.price
    fill_in "Season end", with: @lesson.season_end
    fill_in "Season start", with: @lesson.season_start
    click_on "Create Lesson"

    assert_text "Lesson was successfully created"
    click_on "Back"
  end

  test "should update Lesson" do
    visit lesson_url(@lesson)
    click_on "Edit this lesson", match: :first

    fill_in "Cover img path", with: @lesson.cover_img_path
    fill_in "Description", with: @lesson.description
    fill_in "Max age", with: @lesson.max_age
    fill_in "Min age", with: @lesson.min_age
    fill_in "Name", with: @lesson.name
    fill_in "Price", with: @lesson.price
    fill_in "Season end", with: @lesson.season_end
    fill_in "Season start", with: @lesson.season_start
    click_on "Update Lesson"

    assert_text "Lesson was successfully updated"
    click_on "Back"
  end

  test "should destroy Lesson" do
    visit lesson_url(@lesson)
    click_on "Destroy this lesson", match: :first

    assert_text "Lesson was successfully destroyed"
  end
end
