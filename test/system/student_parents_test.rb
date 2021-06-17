require "application_system_test_case"

class StudentParentsTest < ApplicationSystemTestCase
  setup do
    @student_parent = student_parents(:one)
  end

  test "visiting the index" do
    visit student_parents_url
    assert_selector "h1", text: "Student Parents"
  end

  test "creating a Student parent" do
    visit student_parents_url
    click_on "New Student Parent"

    fill_in "Email", with: @student_parent.email
    fill_in "Name", with: @student_parent.name
    fill_in "Phone", with: @student_parent.phone
    click_on "Create Student parent"

    assert_text "Student parent was successfully created"
    click_on "Back"
  end

  test "updating a Student parent" do
    visit student_parents_url
    click_on "Edit", match: :first

    fill_in "Email", with: @student_parent.email
    fill_in "Name", with: @student_parent.name
    fill_in "Phone", with: @student_parent.phone
    click_on "Update Student parent"

    assert_text "Student parent was successfully updated"
    click_on "Back"
  end

  test "destroying a Student parent" do
    visit student_parents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student parent was successfully destroyed"
  end
end
