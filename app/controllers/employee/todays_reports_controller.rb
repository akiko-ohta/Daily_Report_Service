class Employee::TodaysReportsController < ApplicationController

  def index
    @todays_report = TodaysReport.new
    @tasks = current_employee.department.tasks.where(is_active: true)
    if current_employee.department.todays_reports.exists?
      @todays_reports = current_employee.department.todays_reports.all
    end
    @daily_report = DailyReport.new
  end

  def create
    current_employee.department.tasks.where(is_active: true).each do |task|
    todays_report = TodaysReport.new(todays_report_params.merge(task_id: task.id))
    todays_report.save
    end
    redirect_to todays_reports_path
  end

  def update
    todays_report = TodaysReport.find(params[:id])
    todays_report.update(todays_report_params)
    redirect_to todays_reports_path
  end

  def destroy_all
  end

  private

  def todays_report_params
    params.require(:todays_report).permit(:department_id, :task_id, :practitioner)
  end
end
