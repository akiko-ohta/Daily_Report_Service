require "test_helper"

class Employee::TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get employee_tasks_new_url
    assert_response :success
  end

  test "should get create" do
    get employee_tasks_create_url
    assert_response :success
  end

  test "should get edit" do
    get employee_tasks_edit_url
    assert_response :success
  end

  test "should get update" do
    get employee_tasks_update_url
    assert_response :success
  end
end
