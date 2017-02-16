require 'test_helper'

class CurationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @curation = curations(:one)
  end

  test "should get index" do
    get curations_url
    assert_response :success
  end

  test "should get new" do
    get new_curation_url
    assert_response :success
  end

  test "should create curation" do
    assert_difference('Curation.count') do
      post curations_url, params: { curation: { description: @curation.description, title: @curation.title, user_id: @curation.user_id } }
    end

    assert_redirected_to curation_url(Curation.last)
  end

  test "should show curation" do
    get curation_url(@curation)
    assert_response :success
  end

  test "should get edit" do
    get edit_curation_url(@curation)
    assert_response :success
  end

  test "should update curation" do
    patch curation_url(@curation), params: { curation: { description: @curation.description, title: @curation.title, user_id: @curation.user_id } }
    assert_redirected_to curation_url(@curation)
  end

  test "should destroy curation" do
    assert_difference('Curation.count', -1) do
      delete curation_url(@curation)
    end

    assert_redirected_to curations_url
  end
end
