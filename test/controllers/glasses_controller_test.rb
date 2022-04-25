require "test_helper"

class GlassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @glass = glasses(:one)
  end

  test "should get index" do
    get glasses_url, as: :json
    assert_response :success
  end

  test "should create glass" do
    assert_difference('Glass.count') do
      post glasses_url, params: { glass: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show glass" do
    get glass_url(@glass), as: :json
    assert_response :success
  end

  test "should update glass" do
    patch glass_url(@glass), params: { glass: {  } }, as: :json
    assert_response 200
  end

  test "should destroy glass" do
    assert_difference('Glass.count', -1) do
      delete glass_url(@glass), as: :json
    end

    assert_response 204
  end
end
