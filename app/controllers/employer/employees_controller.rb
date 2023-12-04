class Employer::EmployeesController < ApplicationController
  def index
    @employees = current_employer.employee.all
  end

  def show
  end

  def edit
  end

  def update
  end
end
