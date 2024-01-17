class TodaysTask < ApplicationRecord
  belongs_to :department
  belongs_to :task

  validates :department_id, presence: true
  validates :task_id, presence: true
end