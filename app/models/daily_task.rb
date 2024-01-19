class DailyTask < ApplicationRecord
  belongs_to :task

  validates :task_id, presence: true
end
