class DailyTask < ApplicationRecord

  belongs_to :task_id
  belongs_to :employee_id

  validates :task_id, presence: true
end
