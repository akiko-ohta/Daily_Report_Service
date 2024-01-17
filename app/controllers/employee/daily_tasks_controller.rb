class Employee::DailyTasksController < ApplicationController

  def create
    @daily_report = DailyReport.new(daily_report_params)
    @daily_report.save
    @todays_tasks = current_employee.department.todays_tasks.all
    @todays_tasks.each do |todays_task|
      DailyTask.create(task_id: todays_report.task.id, employee_id: todays_report.practitioner)
    end
    current_employee.department.todays_tasks.destroy_all
    redirect_to daily_reports_path
  end

  def index
    @daily_reports = DailyReport.all
  end

  def show
    @daily_report =DailyReport.find(params[:id])
  end

  private

  def daily_report_params
    params.require(:daily_report).permit(:department_id, :dayly_task_id, :handover_id)
  end
end