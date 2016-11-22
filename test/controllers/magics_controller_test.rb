require 'test_helper'

class MagicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @magic = magics(:one)
  end

  test "should get index" do
    get magics_url
    assert_response :success
  end

  test "should get new" do
    get new_magic_url
    assert_response :success
  end

  test "should create magic" do
    assert_difference('Magic.count') do
      post magics_url, params: { magic: {  } }
    end

    assert_redirected_to magic_url(Magic.last)
  end

  test "should show magic" do
    get magic_url(@magic)
    assert_response :success
  end

  test "should get edit" do
    get edit_magic_url(@magic)
    assert_response :success
  end

  test "should update magic" do
    patch magic_url(@magic), params: { magic: {  } }
    assert_redirected_to magic_url(@magic)
  end

  test "should destroy magic" do
    assert_difference('Magic.count', -1) do
      delete magic_url(@magic)
    end

    assert_redirected_to magics_url
  end
end
