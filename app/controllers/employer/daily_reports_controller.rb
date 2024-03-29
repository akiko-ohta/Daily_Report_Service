class Employer::DailyReportsController < ApplicationController
  before_action :authenticate_employer!

  def index
    @daily_reports = DailyReport.page(params[:page]).per(31).order(id: "DESC")
  end

  def show
    @daily_report = DailyReport.find(params[:id])
    @daily_tasks = @daily_report.daily_tasks.includes(:task).order('tasks.execution_time ASC').all
    # 日報と同じ作成日の引継ぎを取得
    @handover = @daily_report.department.handover.where("created_at >= ? AND created_at < ?", @daily_report.created_at.beginning_of_day, @daily_report.created_at.beginning_of_day.tomorrow).first
  end

  def search
    redirect_to employer_daily_reports_path if params[:keyword].blank?
    keywords = params[:keyword].split(/[[:blank:]]+/)
    @handover = Handover.none
    keywords.each do |keyword|
      @handovers = Handover.where("handover LIKE ?", "%#{keyword}%")
    end
    @daily_reports = DailyReport.all
  end

  def destroy
    @daily_report = DailyReport.find(params[:id])
    @handover = @daily_report.department.handover.where("created_at >= ? AND created_at < ?", @daily_report.created_at.beginning_of_day, @daily_report.created_at.beginning_of_day.tomorrow).first
    if @daily_report.destroy
      # @handover が nil でない場合、引継ぎも削除
      @handover.destroy if @handover.present?
    end
    redirect_to employer_daily_reports_path
  end

  private

  def daily_report_params
    params.require(:daily_report).permit(:department_id)
  end
end