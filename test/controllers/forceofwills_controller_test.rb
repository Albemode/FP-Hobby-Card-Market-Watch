require 'test_helper'

class ForceofwillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @forceofwill = forceofwills(:one)
  end

  test "should get index" do
    get forceofwills_url
    assert_response :success
  end

  test "should get new" do
    get new_forceofwill_url
    assert_response :success
  end

  test "should create forceofwill" do
    assert_difference('Forceofwill.count') do
      post forceofwills_url, params: { forceofwill: {  } }
    end

    assert_redirected_to forceofwill_url(Forceofwill.last)
  end

  test "should show forceofwill" do
    get forceofwill_url(@forceofwill)
    assert_response :success
  end

  test "should get edit" do
    get edit_forceofwill_url(@forceofwill)
    assert_response :success
  end

  test "should update forceofwill" do
    patch forceofwill_url(@forceofwill), params: { forceofwill: {  } }
    assert_redirected_to forceofwill_url(@forceofwill)
  end

  test "should destroy forceofwill" do
    assert_difference('Forceofwill.count', -1) do
      delete forceofwill_url(@forceofwill)
    end

    assert_redirected_to forceofwills_url
  end
end
