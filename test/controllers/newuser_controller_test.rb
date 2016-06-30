require 'test_helper'

class NewuserControllerTest < ActionController::TestCase
  test "should get newuser" do
    get :newuser
    assert_response :success
  end

end
