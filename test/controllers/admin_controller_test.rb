require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get admin_new" do
    get :admin_new
    assert_response :success
  end

end
