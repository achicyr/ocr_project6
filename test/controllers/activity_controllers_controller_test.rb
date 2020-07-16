require 'test_helper'

class ActivityControllersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_controller = activity_controllers(:one)
  end

  test "should get index" do
    get activity_controllers_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_controller_url
    assert_response :success
  end

  test "should create activity_controller" do
    assert_difference('ActivityController.count') do
      post activity_controllers_url, params: { activity_controller: {  } }
    end

    assert_redirected_to activity_controller_url(ActivityController.last)
  end

  test "should show activity_controller" do
    get activity_controller_url(@activity_controller)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_controller_url(@activity_controller)
    assert_response :success
  end

  test "should update activity_controller" do
    patch activity_controller_url(@activity_controller), params: { activity_controller: {  } }
    assert_redirected_to activity_controller_url(@activity_controller)
  end

  test "should destroy activity_controller" do
    assert_difference('ActivityController.count', -1) do
      delete activity_controller_url(@activity_controller)
    end

    assert_redirected_to activity_controllers_url
  end
end
