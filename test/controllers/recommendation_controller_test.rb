require "test_helper"

class RecommendationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recommendation_index_url
    assert_response :success
  end
end
