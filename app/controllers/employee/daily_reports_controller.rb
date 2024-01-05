class Employee::DailyReportsController < ApplicationController

  def create
    daily_report = DailyReport.new(daily_report_params)
    daily_report.save
    redirect_to daily_reports_path
  end

  def index
  end

  def show
  end

  private

  def daily_report_params
    params.require(:daily_report).permit(:department_id, :task_id, :employee_id, :handover)
  end
end
