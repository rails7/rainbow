require 'test_helper'

class TempControllerTest < ActionController::TestCase
  test "should get one" do
    get :one
    assert_response :success
  end

end
