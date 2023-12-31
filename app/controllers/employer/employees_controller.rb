class Employer::EmployeesController < ApplicationController
  def index
    @employees = Employee.all
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
