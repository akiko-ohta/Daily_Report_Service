class Employer::DepartmentsController < ApplicationController
  def create
    department = Department.new(department_params)
    if department.save
      redirect_to departments_path
    else
      render :index
    end
  end

  def index
    @department = Department.new
    @departments= Department.all
  end

  def edit
    @department = Department.find(params[:id])
  end

  def update
    department = Department.find(params[:id])
    if department.update(department_params)
       redirect_to departments_path
    else
      @department = Department.find(params[:id])
      render :edit
    end
  end

  private

  def department_params
    params.require(:department).permit(:name, :employer_id)
  end

end