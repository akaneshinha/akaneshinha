require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  test "should get client" do
    get :client
    assert_response :success
  end

end
