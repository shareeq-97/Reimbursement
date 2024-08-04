class Bill < ApplicationRecord
  belongs_to :employee

  BILL_TYPES = %w[Food Travel Others].freeze

  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :bill_type, presence: true, inclusion: { in: BILL_TYPES }
  validates :employee_id, presence: true
end
