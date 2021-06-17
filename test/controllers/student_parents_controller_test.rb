require "test_helper"

class StudentParentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_parent = student_parents(:one)
  end

  test "should get index" do
    get student_parents_url
    assert_response :success
  end

  test "should get new" do
    get new_student_parent_url
    assert_response :success
  end

  test "should create student_parent" do
    assert_difference('StudentParent.count') do
      post student_parents_url, params: { student_parent: { email: @student_parent.email, name: @student_parent.name, phone: @student_parent.phone } }
    end

    assert_redirected_to student_parent_url(StudentParent.last)
  end

  test "should show student_parent" do
    get student_parent_url(@student_parent)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_parent_url(@student_parent)
    assert_response :success
  end

  test "should update student_parent" do
    patch student_parent_url(@student_parent), params: { student_parent: { email: @student_parent.email, name: @student_parent.name, phone: @student_parent.phone } }
    assert_redirected_to student_parent_url(@student_parent)
  end

  test "should destroy student_parent" do
    assert_difference('StudentParent.count', -1) do
      delete student_parent_url(@student_parent)
    end

    assert_redirected_to student_parents_url
  end
end
