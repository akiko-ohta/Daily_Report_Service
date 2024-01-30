class Employee::DailyReportsController < ApplicationController
  before_action :authenticate_employee!

  def create
    @daily_report = DailyReport.new(daily_report_params)
    @daily_report.save
    @todays_tasks = current_employee.department.todays_tasks.all
    @todays_tasks.each do |todays_task|
      DailyTask.create(daily_report_id: @daily_report.id, task_id: todays_task.task.id, employee_id: todays_task.practitioner)
    end
    current_employee.department.todays_tasks.destroy_all
    redirect_to daily_reports_path
  end

  def index
    @daily_reports = current_employee.department.daily_report.all.page(params[:page]).per(31).order(id: "DESC")
  end

  def show
    @daily_report = DailyReport.find(params[:id])
    @daily_tasks = @daily_report.daily_tasks.includes(:task).order('tasks.execution_time ASC').all
    # 日報と同じ作成日の引継ぎを取得
    @handover = @daily_report.department.handover.where("created_at >= ? AND created_at < ?", @daily_report.created_at.beginning_of_day, @daily_report.created_at.beginning_of_day.tomorrow).first
  end

  def search
    redirect_to daily_reports_path if params[:keyword].blank?
    keywords = params[:keyword].split(/[[:blank:]]+/)
    @handover = Handover.none
    keywords.each do |keyword|
      @handovers = current_employee.department.handover.where("handover LIKE ?", "%#{keyword}%")
    end
    @daily_reports = current_employee.department.daily_report.all
  end

  private

  def daily_report_params
    params.require(:daily_report).permit(:department_id)
  end
end