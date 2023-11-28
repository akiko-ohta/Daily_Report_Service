require "test_helper"

class Employer::EmployeesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get employer_employees_index_url
    assert_response :success
  end

  test "should get show" do
    get employer_employees_show_url
    assert_response :success
  end

  test "should get edit" do
    get employer_employees_edit_url
    assert_response :success
  end

  test "should get update" do
    get employer_employees_update_url
    assert_response :success
  end
end
