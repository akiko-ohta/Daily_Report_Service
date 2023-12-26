class Employee::TodaysReportsController < ApplicationController

  def create
    todays_report = TodaysReport.new(todays_report_params)
    todays_report.save
    redirect_to todays_reports_path
  end

  def index
    @todays_report = TodaysReport.new
    @tasks = current_employee.department.tasks.where(is_active: true)
    if current_employee.department.todays_reports.exists?
      @todays_reports = current_employee.department.todays_reports.all
    else
      @todays_reports = []
    end
  end

  def update
  end

  def destroy_all
  end

  private

  def todays_report_params
    params.require(:todays_report).permit(:department_id, :task_id, :practitioner, :handover)
  end


end
