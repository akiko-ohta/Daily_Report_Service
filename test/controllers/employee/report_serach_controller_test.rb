require "test_helper"

class Employee::ReportSerachControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get employee_report_serach_show_url
    assert_response :success
  end
end
