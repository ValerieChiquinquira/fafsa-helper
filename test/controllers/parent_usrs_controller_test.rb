require "test_helper"

class ParentUsrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parent_usr = parent_usrs(:one)
  end

  test "should get index" do
    get parent_usrs_url
    assert_response :success
  end

  test "should get new" do
    get new_parent_usr_url
    assert_response :success
  end

  test "should create parent_usr" do
    assert_difference('ParentUsr.count') do
      post parent_usrs_url, params: { parent_usr: { email: @parent_usr.email, name: @parent_usr.name, phone: @parent_usr.phone } }
    end

    assert_redirected_to parent_usr_url(ParentUsr.last)
  end

  test "should show parent_usr" do
    get parent_usr_url(@parent_usr)
    assert_response :success
  end

  test "should get edit" do
    get edit_parent_usr_url(@parent_usr)
    assert_response :success
  end

  test "should update parent_usr" do
    patch parent_usr_url(@parent_usr), params: { parent_usr: { email: @parent_usr.email, name: @parent_usr.name, phone: @parent_usr.phone } }
    assert_redirected_to parent_usr_url(@parent_usr)
  end

  test "should destroy parent_usr" do
    assert_difference('ParentUsr.count', -1) do
      delete parent_usr_url(@parent_usr)
    end

    assert_redirected_to parent_usrs_url
  end
end
