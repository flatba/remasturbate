require 'test_helper'

class CurationTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @curation_tag = curation_tags(:one)
  end

  test "should get index" do
    get curation_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_curation_tag_url
    assert_response :success
  end

  test "should create curation_tag" do
    assert_difference('CurationTag.count') do
      post curation_tags_url, params: { curation_tag: { curation_id: @curation_tag.curation_id, tag_id: @curation_tag.tag_id } }
    end

    assert_redirected_to curation_tag_url(CurationTag.last)
  end

  test "should show curation_tag" do
    get curation_tag_url(@curation_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_curation_tag_url(@curation_tag)
    assert_response :success
  end

  test "should update curation_tag" do
    patch curation_tag_url(@curation_tag), params: { curation_tag: { curation_id: @curation_tag.curation_id, tag_id: @curation_tag.tag_id } }
    assert_redirected_to curation_tag_url(@curation_tag)
  end

  test "should destroy curation_tag" do
    assert_difference('CurationTag.count', -1) do
      delete curation_tag_url(@curation_tag)
    end

    assert_redirected_to curation_tags_url
  end
end
