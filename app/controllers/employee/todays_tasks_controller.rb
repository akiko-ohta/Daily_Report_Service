class Employee::TodaysTasksController < ApplicationController

  def index
    @todays_task = TodaysTask.new
    @tasks = current_employee.department.tasks.where(is_active: true)
    if current_employee.department.todays_tasks.exists?
      @todays_tasks = current_employee.department.todays_tasks.all
    end
    # 最後に作成した当日日報、引継ぎの日付を代入
    last_todays_task_date = current_employee.department.todays_tasks.last&.created_at&.to_date
    last_handover = current_employee.department.handover.last&.created_at&.to_date
    handover = current_employee.department.handover.last
    # 所属部署で最後に作成した当日日報の日付と一致するhandoverがあるか確認
    if last_todays_task_date == last_handover && handover.present?
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
      todays_task = TodaysTask.new(todays_task_params.merge(task_id: task.id))
      todays_task.save
    end
    redirect_to todays_tasks_path
  end

  def update
    todays_task = TodaysTask.find(params[:id])
    todays_task.update(todays_task_params)
    redirect_to todays_tasks_path
  end

  def create_handover
    @handover = Handover.new(handover_params)
    @handover.save
    redirect_to todays_tasks_path
  end

  def update_handover
    # 最後に作成した当日日報の作成日を代入
    last_todays_task_date = current_employee.department.todays_tasks.last&.created_at&.to_date
    # 同じ日付に作成された引継ぎを取得
    @handover = Handover.find_by(created_at: last_todays_task_date.beginning_of_day..last_todays_task_date.end_of_day)
    @handover.update(handover_params)
    redirect_to todays_tasks_path
  end

  private

  def todays_task_params
    params.require(:todays_task).permit(:department_id, :task_id, :practitioner)
  end

  def handover_params
    params.require(:handover).permit(:handover, :department_id)
  end
end