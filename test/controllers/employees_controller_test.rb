require 'test_helper'

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get employees_url, as: :json
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post employees_url, params: { employee: { email: @employee.email, employee_id: @employee.employee_id, job_id: @employee.job_id, name: @employee.name, password_digest: @employee.password_digest, phone_number: @employee.phone_number } }, as: :json
    end

    assert_response 201
  end

  test "should show employee" do
    get employee_url(@employee), as: :json
    assert_response :success
  end

  test "should update employee" do
    patch employee_url(@employee), params: { employee: { email: @employee.email, employee_id: @employee.employee_id, job_id: @employee.job_id, name: @employee.name, password_digest: @employee.password_digest, phone_number: @employee.phone_number } }, as: :json
    assert_response 200
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete employee_url(@employee), as: :json
    end

    assert_response 204
  end
end
