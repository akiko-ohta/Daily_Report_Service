class Employee::TodaysReportsController < ApplicationController

  def index
    @todays_report = TodaysReport.new
    @tasks = current_employee.department.tasks.where(is_active: true)
    if current_employee.department.todays_reports.exists?
      @todays_reports = current_employee.department.todays_reports.all
    end
    # 最後に作成した当日日報、引継ぎの日付を代入
    last_todays_report_date = current_employee.department.todays_reports.last&.created_at&.to_date
    last_handover = current_employee.department.handover.last&.created_at&.to_date
    # 所属部署で最後に作成した当日日報の日付と一致するhandoverがあるか確認
    if last_todays_report_date == last_handover && handover.present?
      # 存在する場合はその情報を取得
      @handover = Handover.find_by(created_at: last_handover.beginning_of_day..last_handover.end_of_day)
    else
      # 存在しない場合は新規作成
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
    # 最後に作成した当日日報の作成日を代入
    last_todays_report_date = current_employee.department.todays_reports.last&.created_at&.to_date
    # 同じ日付に作成された引継ぎを取得
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