require "test_helper"

class FafsaAppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fafsa_app = fafsa_apps(:one)
  end

  test "should get index" do
    get fafsa_apps_url
    assert_response :success
  end

  test "should get new" do
    get new_fafsa_app_url
    assert_response :success
  end

  test "should create fafsa_app" do
    assert_difference('FafsaApp.count') do
      post fafsa_apps_url, params: { fafsa_app: { alien_num: @fafsa_app.alien_num, application_year: @fafsa_app.application_year, bachelors: @fafsa_app.bachelors, citizen: @fafsa_app.citizen, conviction: @fafsa_app.conviction, current_grade: @fafsa_app.current_grade, degree_applied: @fafsa_app.degree_applied, drivers_license: @fafsa_app.drivers_license, drivers_license_num: @fafsa_app.drivers_license_num, drivers_license_st: @fafsa_app.drivers_license_st, parent_edu: @fafsa_app.parent_edu, parent_edu2: @fafsa_app.parent_edu2, receive_aid: @fafsa_app.receive_aid } }
    end

    assert_redirected_to fafsa_app_url(FafsaApp.last)
  end

  test "should show fafsa_app" do
    get fafsa_app_url(@fafsa_app)
    assert_response :success
  end

  test "should get edit" do
    get edit_fafsa_app_url(@fafsa_app)
    assert_response :success
  end

  test "should update fafsa_app" do
    patch fafsa_app_url(@fafsa_app), params: { fafsa_app: { alien_num: @fafsa_app.alien_num, application_year: @fafsa_app.application_year, bachelors: @fafsa_app.bachelors, citizen: @fafsa_app.citizen, conviction: @fafsa_app.conviction, current_grade: @fafsa_app.current_grade, degree_applied: @fafsa_app.degree_applied, drivers_license: @fafsa_app.drivers_license, drivers_license_num: @fafsa_app.drivers_license_num, drivers_license_st: @fafsa_app.drivers_license_st, parent_edu: @fafsa_app.parent_edu, parent_edu2: @fafsa_app.parent_edu2, receive_aid: @fafsa_app.receive_aid } }
    assert_redirected_to fafsa_app_url(@fafsa_app)
  end

  test "should destroy fafsa_app" do
    assert_difference('FafsaApp.count', -1) do
      delete fafsa_app_url(@fafsa_app)
    end

    assert_redirected_to fafsa_apps_url
  end
end
