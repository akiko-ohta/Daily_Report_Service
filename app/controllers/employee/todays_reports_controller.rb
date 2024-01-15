class Employee::TodaysReportsController < ApplicationController

  def index
    @todays_report = TodaysReport.new
    @tasks = current_employee.department.tasks.where(is_active: true)
    if current_employee.department.todays_reports.exists?
      @todays_reports = current_employee.department.todays_reports.all
    end
    last_todays_report_date = TodaysReport.last&.created_at&.to_date
    # 最後に作成した当日日報の日付を検索
    if last_todays_report_date.present?
    # 一致するものがあれば@handoverに代入
      @handover = Handover.find_by(created_at: last_todays_report_date.beginning_of_day..last_todays_report_date.end_of_day)
    else
    # なければ@handoverを新規に作成
      @handover = Handover.new
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

  def create_handover
    @handover = Handover.new(handover_params)
    @handover.save
    redirect_to todays_reports_path
  end

  def update_handover
    last_todays_report_date = TodaysReport.last&.created_at&.to_date
    @handover = Handover.find_by(created_at: last_todays_report_date.beginning_of_day..last_todays_report_date.end_of_day)
    @handover.update(handover_params)
    redirect_to todays_reports_path
  end

  private

  def todays_report_params
    params.require(:todays_report).permit(:department_id, :task_id, :practitioner)
  end

  def handover_params
    params.require(:handover).permit(:handover, :department_id)
  end

end
