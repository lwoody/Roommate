require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get main" do
    get :main
    assert_response :success
  end

end
