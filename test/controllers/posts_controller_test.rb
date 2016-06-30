require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  test "should get top" do
    get :top
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
