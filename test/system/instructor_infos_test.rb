require "application_system_test_case"

class InstructorInfosTest < ApplicationSystemTestCase
  setup do
    @instructor_info = instructor_infos(:one)
  end

  test "visiting the index" do
    visit instructor_infos_url
    assert_selector "h1", text: "Instructor infos"
  end

  test "should create instructor info" do
    visit instructor_infos_url
    click_on "New instructor info"

    fill_in "Description", with: @instructor_info.description
    fill_in "Profile img path", with: @instructor_info.profile_img_path
    fill_in "User", with: @instructor_info.user_id
    click_on "Create Instructor info"

    assert_text "Instructor info was successfully created"
    click_on "Back"
  end

  test "should update Instructor info" do
    visit instructor_info_url(@instructor_info)
    click_on "Edit this instructor info", match: :first

    fill_in "Description", with: @instructor_info.description
    fill_in "Profile img path", with: @instructor_info.profile_img_path
    fill_in "User", with: @instructor_info.user_id
    click_on "Update Instructor info"

    assert_text "Instructor info was successfully updated"
    click_on "Back"
  end

  test "should destroy Instructor info" do
    visit instructor_info_url(@instructor_info)
    click_on "Destroy this instructor info", match: :first

    assert_text "Instructor info was successfully destroyed"
  end
end
