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
    @handover = @daily_report.department.handover.where("DATE(created_at) = ?", creation_date).first
  end

  def search
    redirect_to daily_reports_path if params[:keyword].blank?
    keywords = params[:keyword].split(/[[:blank:]]+/)
    @handover = Handover.none
    keywords.each do |keyword|
      @handovers = Handover.where("handover LIKE ?", "%#{keyword}%")
    end
    @daily_reports = DailyReport.all
  end

  private

  def daily_report_params
    params.require(:daily_report).permit(:department_id)
  end
end