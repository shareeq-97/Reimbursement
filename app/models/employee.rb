class Employee < ApplicationRecord
  belongs_to :department
  has_many :bills

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :designation, presence: true
  validates :department_id, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
