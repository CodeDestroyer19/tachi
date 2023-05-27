require "test_helper"

class AiHelpersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ai_helper = ai_helpers(:one)
  end

  test "should get index" do
    get ai_helpers_url
    assert_response :success
  end

  test "should get new" do
    get new_ai_helper_url
    assert_response :success
  end

  test "should create ai_helper" do
    assert_difference("AiHelper.count") do
      post ai_helpers_url, params: { ai_helper: { Helper_Type: @ai_helper.Helper_Type, Name: @ai_helper.Name, Twitter: @ai_helper.Twitter } }
    end

    assert_redirected_to ai_helper_url(AiHelper.last)
  end

  test "should show ai_helper" do
    get ai_helper_url(@ai_helper)
    assert_response :success
  end

  test "should get edit" do
    get edit_ai_helper_url(@ai_helper)
    assert_response :success
  end

  test "should update ai_helper" do
    patch ai_helper_url(@ai_helper), params: { ai_helper: { Helper_Type: @ai_helper.Helper_Type, Name: @ai_helper.Name, Twitter: @ai_helper.Twitter } }
    assert_redirected_to ai_helper_url(@ai_helper)
  end

  test "should destroy ai_helper" do
    assert_difference("AiHelper.count", -1) do
      delete ai_helper_url(@ai_helper)
    end

    assert_redirected_to ai_helpers_url
  end
end
