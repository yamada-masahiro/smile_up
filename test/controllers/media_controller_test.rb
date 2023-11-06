require "test_helper"

class MediaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medium = media(:thousands_of_books_a_month)
  end

  test "should get index" do
    get media_url
    assert_response :success
  end

  test "should get new" do
    get new_medium_url
    assert_response :success
  end

  test "should create medium" do
    assert_difference("Medium.count") do
      post media_url, params: { medium: { furigana: @medium.furigana, name: @medium.name, website_url: @medium.website_url } }
    end

    assert_redirected_to medium_url(Medium.last)
  end

  test "should show medium" do
    get medium_url(@medium)
    assert_response :success
  end

  test "should get edit" do
    get edit_medium_url(@medium)
    assert_response :success
  end

  test "should update medium" do
    patch medium_url(@medium), params: { medium: { furigana: @medium.furigana, name: @medium.name, website_url: @medium.website_url } }
    assert_redirected_to medium_url(@medium)
  end

  test "should destroy medium" do
    assert_difference("Medium.count", -1) do
      delete medium_url(@medium)
    end

    assert_redirected_to media_url
  end
end