require 'test_helper'

class VanguardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vanguard = vanguards(:one)
  end

  test "should get index" do
    get vanguards_url
    assert_response :success
  end

  test "should get new" do
    get new_vanguard_url
    assert_response :success
  end

  test "should create vanguard" do
    assert_difference('Vanguard.count') do
      post vanguards_url, params: { vanguard: {  } }
    end

    assert_redirected_to vanguard_url(Vanguard.last)
  end

  test "should show vanguard" do
    get vanguard_url(@vanguard)
    assert_response :success
  end

  test "should get edit" do
    get edit_vanguard_url(@vanguard)
    assert_response :success
  end

  test "should update vanguard" do
    patch vanguard_url(@vanguard), params: { vanguard: {  } }
    assert_redirected_to vanguard_url(@vanguard)
  end

  test "should destroy vanguard" do
    assert_difference('Vanguard.count', -1) do
      delete vanguard_url(@vanguard)
    end

    assert_redirected_to vanguards_url
  end
end
