class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :authentication_keys => [:user_code]
  belongs_to :department

  validates :user_code, presence: true, uniqueness: true
  validates :department_id, presence: true
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true

  enum is_active: { '有効': true, '無効': false }

  def email_required?
    false
  end

  def email_changed?
    false
  end

  def will_save_change_to_email?
    false
  end

  def employee_display
    last_name + ' ' + first_name
  end

  def active_for_authentication?
    super && self.is_active?
  end

end
