require "test_helper"

class StampsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stamp = stamps(:one)
  end

  test "should get index" do
    get stamps_url, as: :json
    assert_response :success
  end

  test "should create stamp" do
    assert_difference("Stamp.count") do
      post stamps_url, params: { stamp: { country_id: @stamp.country_id, date_obtained: @stamp.date_obtained, description: @stamp.description, subject_id: @stamp.subject_id, title: @stamp.title, year_id: @stamp.year_id } }, as: :json
    end

    assert_response :created
  end

  test "should show stamp" do
    get stamp_url(@stamp), as: :json
    assert_response :success
  end

  test "should update stamp" do
    patch stamp_url(@stamp), params: { stamp: { country_id: @stamp.country_id, date_obtained: @stamp.date_obtained, description: @stamp.description, subject_id: @stamp.subject_id, title: @stamp.title, year_id: @stamp.year_id } }, as: :json
    assert_response :success
  end

  test "should destroy stamp" do
    assert_difference("Stamp.count", -1) do
      delete stamp_url(@stamp), as: :json
    end

    assert_response :no_content
  end
end
