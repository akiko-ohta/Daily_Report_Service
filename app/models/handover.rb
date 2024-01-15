class Handover < ApplicationRecord
  belongs_to :department

  validates :department_id, presence: true
end
