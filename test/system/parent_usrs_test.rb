require "application_system_test_case"

class ParentUsrsTest < ApplicationSystemTestCase
  setup do
    @parent_usr = parent_usrs(:one)
  end

  test "visiting the index" do
    visit parent_usrs_url
    assert_selector "h1", text: "Parent Usrs"
  end

  test "creating a Parent usr" do
    visit parent_usrs_url
    click_on "New Parent Usr"

    fill_in "Email", with: @parent_usr.email
    fill_in "Name", with: @parent_usr.name
    fill_in "Phone", with: @parent_usr.phone
    click_on "Create Parent usr"

    assert_text "Parent usr was successfully created"
    click_on "Back"
  end

  test "updating a Parent usr" do
    visit parent_usrs_url
    click_on "Edit", match: :first

    fill_in "Email", with: @parent_usr.email
    fill_in "Name", with: @parent_usr.name
    fill_in "Phone", with: @parent_usr.phone
    click_on "Update Parent usr"

    assert_text "Parent usr was successfully updated"
    click_on "Back"
  end

  test "destroying a Parent usr" do
    visit parent_usrs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Parent usr was successfully destroyed"
  end
end
