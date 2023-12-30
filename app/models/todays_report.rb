class TodaysReport < ApplicationRecord
  belongs_to :department
  belongs_to :task
end
