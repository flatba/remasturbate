require 'test_helper'

class CurationLikesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @curation_like = curation_likes(:one)
  end

  test "should get index" do
    get curation_likes_url
    assert_response :success
  end

  test "should get new" do
    get new_curation_like_url
    assert_response :success
  end

  test "should create curation_like" do
    assert_difference('CurationLike.count') do
      post curation_likes_url, params: { curation_like: { curation_id: @curation_like.curation_id, user_id: @curation_like.user_id } }
    end

    assert_redirected_to curation_like_url(CurationLike.last)
  end

  test "should show curation_like" do
    get curation_like_url(@curation_like)
    assert_response :success
  end

  test "should get edit" do
    get edit_curation_like_url(@curation_like)
    assert_response :success
  end

  test "should update curation_like" do
    patch curation_like_url(@curation_like), params: { curation_like: { curation_id: @curation_like.curation_id, user_id: @curation_like.user_id } }
    assert_redirected_to curation_like_url(@curation_like)
  end

  test "should destroy curation_like" do
    assert_difference('CurationLike.count', -1) do
      delete curation_like_url(@curation_like)
    end

    assert_redirected_to curation_likes_url
  end
end
