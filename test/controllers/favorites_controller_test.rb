require "test_helper"

class FavoritesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get favorites_create_url
    assert_response :success
  end

  test "should get update" do
    get favorites_update_url
    assert_response :success
  end
end
