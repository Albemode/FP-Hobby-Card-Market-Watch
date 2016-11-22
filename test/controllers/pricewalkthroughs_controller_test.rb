require 'test_helper'

class PricewalkthroughsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pricewalkthrough = pricewalkthroughs(:one)
  end

  test "should get index" do
    get pricewalkthroughs_url
    assert_response :success
  end

  test "should get new" do
    get new_pricewalkthrough_url
    assert_response :success
  end

  test "should create pricewalkthrough" do
    assert_difference('Pricewalkthrough.count') do
      post pricewalkthroughs_url, params: { pricewalkthrough: {  } }
    end

    assert_redirected_to pricewalkthrough_url(Pricewalkthrough.last)
  end

  test "should show pricewalkthrough" do
    get pricewalkthrough_url(@pricewalkthrough)
    assert_response :success
  end

  test "should get edit" do
    get edit_pricewalkthrough_url(@pricewalkthrough)
    assert_response :success
  end

  test "should update pricewalkthrough" do
    patch pricewalkthrough_url(@pricewalkthrough), params: { pricewalkthrough: {  } }
    assert_redirected_to pricewalkthrough_url(@pricewalkthrough)
  end

  test "should destroy pricewalkthrough" do
    assert_difference('Pricewalkthrough.count', -1) do
      delete pricewalkthrough_url(@pricewalkthrough)
    end

    assert_redirected_to pricewalkthroughs_url
  end
end
