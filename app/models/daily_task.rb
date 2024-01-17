class DailyTask < ApplicationRecord
  belongs_to :task_id

  validates :task_id, presence: true
end
