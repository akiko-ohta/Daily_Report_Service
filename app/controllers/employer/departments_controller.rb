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
  end

  def update
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end

end