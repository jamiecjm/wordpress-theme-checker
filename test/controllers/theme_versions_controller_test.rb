require 'test_helper'

class ThemeVersionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @theme_version = theme_versions(:one)
  end

  test "should get index" do
    get theme_versions_url
    assert_response :success
  end

  test "should get new" do
    get new_theme_version_url
    assert_response :success
  end

  test "should create theme_version" do
    assert_difference('ThemeVersion.count') do
      post theme_versions_url, params: { theme_version: { details: @theme_version.details, theme_file: @theme_version.theme_file, theme_id: @theme_version.theme_id, version: @theme_version.version } }
    end

    assert_redirected_to theme_version_url(ThemeVersion.last)
  end

  test "should show theme_version" do
    get theme_version_url(@theme_version)
    assert_response :success
  end

  test "should get edit" do
    get edit_theme_version_url(@theme_version)
    assert_response :success
  end

  test "should update theme_version" do
    patch theme_version_url(@theme_version), params: { theme_version: { details: @theme_version.details, theme_file: @theme_version.theme_file, theme_id: @theme_version.theme_id, version: @theme_version.version } }
    assert_redirected_to theme_version_url(@theme_version)
  end

  test "should destroy theme_version" do
    assert_difference('ThemeVersion.count', -1) do
      delete theme_version_url(@theme_version)
    end

    assert_redirected_to theme_versions_url
  end
end
