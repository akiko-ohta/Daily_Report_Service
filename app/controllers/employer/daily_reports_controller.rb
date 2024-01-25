class Employer::DailyReportsController < ApplicationController
  before_action :authenticate_employer!

  def index
    @daily_reports = DailyReport.page(params[:page]).per(31)
  end

  def show
    @daily_report = DailyReport.find(params[:id])
    @daily_tasks = @daily_report.daily_tasks.includes(:task).order('tasks.execution_time ASC').all
    # 現在の日報の作成日を取得
    creation_date = @daily_report.created_at.to_date
    # 日報と同じ作成日の引継ぎを取得
    @handover = Handover.where("DATE(created_at) = ?", creation_date).first
  end

  private

  def daily_report_params
    params.require(:daily_report).permit(:department_id)
  end
end