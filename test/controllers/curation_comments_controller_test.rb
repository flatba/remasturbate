require 'test_helper'

class CurationCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @curation_comment = curation_comments(:one)
  end

  test "should get index" do
    get curation_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_curation_comment_url
    assert_response :success
  end

  test "should create curation_comment" do
    assert_difference('CurationComment.count') do
      post curation_comments_url, params: { curation_comment: { comment: @curation_comment.comment, curation_id: @curation_comment.curation_id, user_id: @curation_comment.user_id } }
    end

    assert_redirected_to curation_comment_url(CurationComment.last)
  end

  test "should show curation_comment" do
    get curation_comment_url(@curation_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_curation_comment_url(@curation_comment)
    assert_response :success
  end

  test "should update curation_comment" do
    patch curation_comment_url(@curation_comment), params: { curation_comment: { comment: @curation_comment.comment, curation_id: @curation_comment.curation_id, user_id: @curation_comment.user_id } }
    assert_redirected_to curation_comment_url(@curation_comment)
  end

  test "should destroy curation_comment" do
    assert_difference('CurationComment.count', -1) do
      delete curation_comment_url(@curation_comment)
    end

    assert_redirected_to curation_comments_url
  end
end
