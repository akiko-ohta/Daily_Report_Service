class Employer::DepartmentsController < ApplicationController
  def create
    department = Department.new
    department.save
    redirect_to departments_path
  end

  def index
    @department = Department.new
    @departments= Department.all
  end

  def edit
  end

  def update
  end
end
