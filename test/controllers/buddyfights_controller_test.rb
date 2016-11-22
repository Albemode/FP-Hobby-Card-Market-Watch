require 'test_helper'

class BuddyfightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buddyfight = buddyfights(:one)
  end

  test "should get index" do
    get buddyfights_url
    assert_response :success
  end

  test "should get new" do
    get new_buddyfight_url
    assert_response :success
  end

  test "should create buddyfight" do
    assert_difference('Buddyfight.count') do
      post buddyfights_url, params: { buddyfight: {  } }
    end

    assert_redirected_to buddyfight_url(Buddyfight.last)
  end

  test "should show buddyfight" do
    get buddyfight_url(@buddyfight)
    assert_response :success
  end

  test "should get edit" do
    get edit_buddyfight_url(@buddyfight)
    assert_response :success
  end

  test "should update buddyfight" do
    patch buddyfight_url(@buddyfight), params: { buddyfight: {  } }
    assert_redirected_to buddyfight_url(@buddyfight)
  end

  test "should destroy buddyfight" do
    assert_difference('Buddyfight.count', -1) do
      delete buddyfight_url(@buddyfight)
    end

    assert_redirected_to buddyfights_url
  end
end
