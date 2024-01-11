class Employee::DailyReportsController < ApplicationController

  def create
    @todays_reports = current_employee.department.todays_reports.all
    @todays_reports.each do |todays_report|
      DailyReport.create(department_id: @department.id, task_id: todays_report.task.id, employee_id: todays_report.practitioner)
    end
    current_employee.department.todays_reports.destroy_all
    redirect_to daily_reports_path
  end

  def index
    @daily_reports = DailyReport.all
  end

  def show
    @daily_report =DailyReport.find(params[:id])
  end

  def destroy_all
    current_employee.department.todays_report.destroy_all
  end

  private

  def daily_report_params
    params.require(:daily_report).permit(:department_id, :task_id, :employee_id)
  end
end
