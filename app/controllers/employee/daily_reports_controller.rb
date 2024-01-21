class Employee::DailyReportsController < ApplicationController

  def create
    #byebug
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
    @daily_reports = current_employee.department.daily_report.all
  end

  def show
    @daily_report =DailyReport.find(params[:id])
    last_daily_report_date = current_employee.department.daily_report.last&.created_at&.to_date
    last_handover_date = current_employee.department.handover.last&.created_at&.to_date
    # 所属部署で最後に作成した当日日報の日付と一致するhandoverがあるか確認
    if last_daily_report_date == last_handover_date
      # 存在する場合はその情報を取得
      @handover = Handover.last
    end
  end

  private

  def daily_report_params
    params.require(:daily_report).permit(:department_id)
  end
end