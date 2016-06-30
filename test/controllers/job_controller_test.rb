require 'test_helper'

class JobControllerTest < ActionController::TestCase
  test "should get job1" do
    get :job1
    assert_response :success
  end

end
