require 'test_helper'

class YugiohsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yugioh = yugiohs(:one)
  end

  test "should get index" do
    get yugiohs_url
    assert_response :success
  end

  test "should get new" do
    get new_yugioh_url
    assert_response :success
  end

  test "should create yugioh" do
    assert_difference('Yugioh.count') do
      post yugiohs_url, params: { yugioh: {  } }
    end

    assert_redirected_to yugioh_url(Yugioh.last)
  end

  test "should show yugioh" do
    get yugioh_url(@yugioh)
    assert_response :success
  end

  test "should get edit" do
    get edit_yugioh_url(@yugioh)
    assert_response :success
  end

  test "should update yugioh" do
    patch yugioh_url(@yugioh), params: { yugioh: {  } }
    assert_redirected_to yugioh_url(@yugioh)
  end

  test "should destroy yugioh" do
    assert_difference('Yugioh.count', -1) do
      delete yugioh_url(@yugioh)
    end

    assert_redirected_to yugiohs_url
  end
end
