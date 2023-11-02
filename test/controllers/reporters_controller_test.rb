require "test_helper"

class ReportersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reporter = reporters(:homma)
    @reporter.name.my_prettify!
    @reporter.furigana.my_prettify!
  end

  test "should get index" do
    get reporters_url
    assert_response :success
    # assert_select 'div.pagination', count: 2
  end

  test "should get new" do
    get new_reporter_url
    assert_response :success
  end

  test "should create reporter" do
    assert_difference("Reporter.count") do
      post reporters_url, params: { reporter: { desirability: @reporter.desirability, furigana: @reporter.furigana, medium_id: @reporter.medium_id, name: @reporter.name } }
    end

    assert_redirected_to reporters_url
    reporter_id = "reporter_#{@reporter.id}"
    assert_select "##{reporter_id} span", text: @reporter.name
  end

  test "should show reporter" do
    get reporter_url(@reporter)
    assert_redirected_to reporters_url
    reporter_id = "reporter_#{@reporter.id}"
    assert_select "##{reporter_id} span", text: @reporter.name
  end

  test "should get edit" do
    get edit_reporter_url(@reporter)
    assert_response :success
    assert_select 'input', text: @reporter.name
    assert_select 'input', text: @reporter.furigana
  end

  test "should update reporter" do
    patch reporter_url(@reporter), params: { reporter: { desirability: @reporter.desirability, furigana: @reporter.furigana, medium_id: @reporter.medium_id, name: @reporter.name } }
    assert_redirected_to reporters_url
    follow_redirect!
    reporter_id = dom_id @reporter
    assert_select "div##{reporter_id}"
    assert_match @reporter.name, response.body
  end

  test "should destroy reporter" do
    assert_difference("Reporter.count", -1) do
      delete reporter_url(@reporter)
    end

    assert_redirected_to reporters_url
  end
end
