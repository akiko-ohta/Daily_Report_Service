class Employee::TasksController < ApplicationController
  before_action :authenticate_employee!

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_params)
    if task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def index
    @tasks = current_employee.department.tasks.all.order(execution_time: :asc)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    if task.update(task_params)
       redirect_to tasks_path
    else
      @task = Task.find(params[:id])
      render :edit
    end
  end

  private

  def task_params
    params.require(:task).permit(:name, :execution_time, :is_active, :department_id)
  end
end
