class Task < ApplicationRecord
  has_many :todays_reports, dependent: :destroy
  belongs_to :department

  validates :name, presence: true
  validates :excution_time, presence: true
  
  enum is_active: { '有効': true, '無効': false }
end
