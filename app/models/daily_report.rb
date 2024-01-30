class DailyReport < ApplicationRecord
  belongs_to :department
  has_many :daily_tasks, dependent: :destroy

  validates :department_id, presence: true

end