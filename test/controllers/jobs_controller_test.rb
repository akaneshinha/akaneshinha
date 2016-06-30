require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  test "should get joblist" do
    get :joblist
    assert_response :success
  end

end
