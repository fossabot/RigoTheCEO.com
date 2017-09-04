require 'test_helper'

class CoreControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get core_home_url
    assert_response :success
  end

end
