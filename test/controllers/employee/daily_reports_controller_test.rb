require "test_helper"

class Employee::DailyReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get employee_daily_reports_new_url
    assert_response :success
  end

  test "should get index" do
    get employee_daily_reports_index_url
    assert_response :success
  end

  test "should get show" do
    get employee_daily_reports_show_url
    assert_response :success
  end
end
