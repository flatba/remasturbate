require 'test_helper'

class VideoLikesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video_like = video_likes(:one)
  end

  test "should get index" do
    get video_likes_url
    assert_response :success
  end

  test "should get new" do
    get new_video_like_url
    assert_response :success
  end

  test "should create video_like" do
    assert_difference('VideoLike.count') do
      post video_likes_url, params: { video_like: { user_id: @video_like.user_id, video_id: @video_like.video_id } }
    end

    assert_redirected_to video_like_url(VideoLike.last)
  end

  test "should show video_like" do
    get video_like_url(@video_like)
    assert_response :success
  end

  test "should get edit" do
    get edit_video_like_url(@video_like)
    assert_response :success
  end

  test "should update video_like" do
    patch video_like_url(@video_like), params: { video_like: { user_id: @video_like.user_id, video_id: @video_like.video_id } }
    assert_redirected_to video_like_url(@video_like)
  end

  test "should destroy video_like" do
    assert_difference('VideoLike.count', -1) do
      delete video_like_url(@video_like)
    end

    assert_redirected_to video_likes_url
  end
end
