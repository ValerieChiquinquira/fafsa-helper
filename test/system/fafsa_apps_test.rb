require "application_system_test_case"

class FafsaAppsTest < ApplicationSystemTestCase
  setup do
    @fafsa_app = fafsa_apps(:one)
  end

  test "visiting the index" do
    visit fafsa_apps_url
    assert_selector "h1", text: "Fafsa Apps"
  end

  test "creating a Fafsa app" do
    visit fafsa_apps_url
    click_on "New Fafsa App"

    fill_in "Alien num", with: @fafsa_app.alien_num
    fill_in "Application year", with: @fafsa_app.application_year
    fill_in "Bachelors", with: @fafsa_app.bachelors
    check "Citizen" if @fafsa_app.citizen
    check "Conviction" if @fafsa_app.conviction
    fill_in "Current grade", with: @fafsa_app.current_grade
    fill_in "Degree applied", with: @fafsa_app.degree_applied
    check "Drivers license" if @fafsa_app.drivers_license
    fill_in "Drivers license num", with: @fafsa_app.drivers_license_num
    fill_in "Drivers license st", with: @fafsa_app.drivers_license_st
    fill_in "Parent edu", with: @fafsa_app.parent_edu
    fill_in "Parent edu2", with: @fafsa_app.parent_edu2
    fill_in "Receive aid", with: @fafsa_app.receive_aid
    click_on "Create Fafsa app"

    assert_text "Fafsa app was successfully created"
    click_on "Back"
  end

  test "updating a Fafsa app" do
    visit fafsa_apps_url
    click_on "Edit", match: :first

    fill_in "Alien num", with: @fafsa_app.alien_num
    fill_in "Application year", with: @fafsa_app.application_year
    fill_in "Bachelors", with: @fafsa_app.bachelors
    check "Citizen" if @fafsa_app.citizen
    check "Conviction" if @fafsa_app.conviction
    fill_in "Current grade", with: @fafsa_app.current_grade
    fill_in "Degree applied", with: @fafsa_app.degree_applied
    check "Drivers license" if @fafsa_app.drivers_license
    fill_in "Drivers license num", with: @fafsa_app.drivers_license_num
    fill_in "Drivers license st", with: @fafsa_app.drivers_license_st
    fill_in "Parent edu", with: @fafsa_app.parent_edu
    fill_in "Parent edu2", with: @fafsa_app.parent_edu2
    fill_in "Receive aid", with: @fafsa_app.receive_aid
    click_on "Update Fafsa app"

    assert_text "Fafsa app was successfully updated"
    click_on "Back"
  end

  test "destroying a Fafsa app" do
    visit fafsa_apps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fafsa app was successfully destroyed"
  end
end
