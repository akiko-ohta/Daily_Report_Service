class Task < ApplicationRecord
  has_many :todays_reports, dependent: :destroy
  belongs_to :department

  validates :name, presence: true
end
