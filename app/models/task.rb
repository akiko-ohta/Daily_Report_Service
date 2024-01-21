class Task < ApplicationRecord
  has_many :todays_tasks, dependent: :destroy
  has_many :daily_tasks, dependent: :destroy
  belongs_to :department

  validates :name, presence: true
  validates :execution_time, presence: true

  enum is_active: { '有効': true, '無効': false }

  def task_execution_time
    task&.execution_time
  end
end