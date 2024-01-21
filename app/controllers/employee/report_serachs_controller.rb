class Employee::ReportSerachsController < ApplicationController

  def search
  redirect_to root_path if params[:keyword] == ""
  split_keyword = params[:keyword].split(/[[:blank:]]+/)
  @handover = []
  split_keyword.each do |keyword|
    next if keyword == ""
    @handovers += Handover.where('handover LIKE(?)', "%#{keyword}%")
  end
  @handover.uniq! #重複した商品を削除する
end

  def serach_result
  end
end
