require "test_helper"

class InstructorInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @instructor_info = instructor_infos(:one)
  end

  test "should get index" do
    get instructor_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_instructor_info_url
    assert_response :success
  end

  test "should create instructor_info" do
    assert_difference("InstructorInfo.count") do
      post instructor_infos_url, params: { instructor_info: { description: @instructor_info.description, profile_img_path: @instructor_info.profile_img_path, user_id: @instructor_info.user_id } }
    end

    assert_redirected_to instructor_info_url(InstructorInfo.last)
  end

  test "should show instructor_info" do
    get instructor_info_url(@instructor_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_instructor_info_url(@instructor_info)
    assert_response :success
  end

  test "should update instructor_info" do
    patch instructor_info_url(@instructor_info), params: { instructor_info: { description: @instructor_info.description, profile_img_path: @instructor_info.profile_img_path, user_id: @instructor_info.user_id } }
    assert_redirected_to instructor_info_url(@instructor_info)
  end

  test "should destroy instructor_info" do
    assert_difference("InstructorInfo.count", -1) do
      delete instructor_info_url(@instructor_info)
    end

    assert_redirected_to instructor_infos_url
  end
end
