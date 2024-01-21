require "test_helper"

class Employee::ReportSerachsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get employee_report_serachs_show_url
    assert_response :success
  end

  test "should get serach_result" do
    get employee_report_serachs_serach_result_url
    assert_response :success
  end
end
