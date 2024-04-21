class Car < ApplicationRecord
    has_many :reservations, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :finance_fee, presence: true
  validates :option_to_purchase_fee, presence: true
  validates :total_amount_payable, presence: true
  validates :duration, presence: true
  validates :apr, presence: true
  validates :color, presence: true
  validates :image, presence: true
end
