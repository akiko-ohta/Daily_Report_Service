class DailyReport < ApplicationRecord
  belongs_to :department
  belongs_to :task
  belongs_to :employee

  validates :department_id, presence: true
  validates :task_id, presence: true
end
