require "test_helper"

class Employee::TodaysReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get employee_todays_reports_new_url
    assert_response :success
  end

  test "should get edit" do
    get employee_todays_reports_edit_url
    assert_response :success
  end

  test "should get update" do
    get employee_todays_reports_update_url
    assert_response :success
  end

  test "should get all_delete" do
    get employee_todays_reports_all_delete_url
    assert_response :success
  end
end
