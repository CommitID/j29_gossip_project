require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get print" do
    get welcome_print_url
    assert_response :success
  end

end
