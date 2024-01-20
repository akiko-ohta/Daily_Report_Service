class Employee::DailyReportsController < ApplicationController

  def create
    @todays_tasks = current_employee.department.todays_tasks.all
    @todays_tasks.each do |todays_task|
      DailyTask.create(task_id: todays_task.task.id, employee_id: todays_task.practitioner)
    end
    current_employee.department.todays_tasks.destroy_all
     byebug
    @daily_report = DailyReport.new(daily_report_params)
    @daily_report.save
    redirect_to daily_reports_path
  end

  def index
    @daily_reports = current_employee.department.daily_report.all
  end

  def show
    @daily_report =DailyReport.find(params[:id])
  end

  private

  def daily_report_params
    params.require(:daily_report).permit(:department_id, :daily_task_id, :handover_id)
  end
end