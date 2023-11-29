class TodaysReport < ApplicationRecord
  has_many :daily_reports, dependent: :destroy
  belongs_to :department
  belongs_to :task
end
