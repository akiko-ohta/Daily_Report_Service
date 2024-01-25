class Employer::EmployeesController < ApplicationController
  before_action :authenticate_employer!

  def index
    @employees = Employee.page(params[:page]).per(10)
    @department = Department.find_by(name: params[:department_name])
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    employee = Employee.find(params[:id])
      if employee.update(employee_params)
         redirect_to employees_path
      else
        @employee = Employee.find(params[:id])
        render :edit
      end
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :is_active, :department_id)
  end
end
