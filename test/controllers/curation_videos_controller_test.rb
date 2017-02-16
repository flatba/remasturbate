require 'test_helper'

class CurationVideosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @curation_video = curation_videos(:one)
  end

  test "should get index" do
    get curation_videos_url
    assert_response :success
  end

  test "should get new" do
    get new_curation_video_url
    assert_response :success
  end

  test "should create curation_video" do
    assert_difference('CurationVideo.count') do
      post curation_videos_url, params: { curation_video: { curation_id: @curation_video.curation_id, video_id: @curation_video.video_id } }
    end

    assert_redirected_to curation_video_url(CurationVideo.last)
  end

  test "should show curation_video" do
    get curation_video_url(@curation_video)
    assert_response :success
  end

  test "should get edit" do
    get edit_curation_video_url(@curation_video)
    assert_response :success
  end

  test "should update curation_video" do
    patch curation_video_url(@curation_video), params: { curation_video: { curation_id: @curation_video.curation_id, video_id: @curation_video.video_id } }
    assert_redirected_to curation_video_url(@curation_video)
  end

  test "should destroy curation_video" do
    assert_difference('CurationVideo.count', -1) do
      delete curation_video_url(@curation_video)
    end

    assert_redirected_to curation_videos_url
  end
end
