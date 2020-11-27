require 'test_helper'

class CommandControllerTest < ActionDispatch::IntegrationTest
  test "should get sale" do
    get command_sale_url
    assert_response :success
  end

  test "should get new" do
    get command_new_url
    assert_response :success
  end

end
