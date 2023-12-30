class Department < ApplicationRecord
  has_many :employees, dependent: :destroy
  has_many :todays_reports, dependent: :destroy
  has_many :tasks, dependent: :destroy

   validates :name, presence: true
end