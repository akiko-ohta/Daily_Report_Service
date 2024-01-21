class DailyTask < ApplicationRecord
  belongs_to :task
  belongs_to :daily_report

  validates :task_id, presence: true
  validates :daily_report_id, presence: true
end
