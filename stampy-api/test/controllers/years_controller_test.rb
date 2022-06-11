require "test_helper"

class YearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @year = years(:one)
  end

  test "should get index" do
    get years_url, as: :json
    assert_response :success
  end

  test "should create year" do
    assert_difference("Year.count") do
      post years_url, params: { year: { year: @year.year } }, as: :json
    end

    assert_response :created
  end

  test "should show year" do
    get year_url(@year), as: :json
    assert_response :success
  end

  test "should update year" do
    patch year_url(@year), params: { year: { year: @year.year } }, as: :json
    assert_response :success
  end

  test "should destroy year" do
    assert_difference("Year.count", -1) do
      delete year_url(@year), as: :json
    end

    assert_response :no_content
  end
end
