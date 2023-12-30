class DailyReport < ApplicationRecord
  belongs_to :department
  belongs_to :task
  belongs_to :employee
end
