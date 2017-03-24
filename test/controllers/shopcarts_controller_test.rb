require 'test_helper'

class ShopcartsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get shopcarts_show_url
    assert_response :success
  end

end
