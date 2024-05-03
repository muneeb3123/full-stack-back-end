class Car < ApplicationRecord
    has_many :reservations, dependent: :destroy
    has_one_attached :image

  validates :name, presence: true
  validates :description, presence: true
  validates :finance_fee, presence: true
  validates :option_to_purchase_fee, presence: true
  validates :total_amount_payable, presence: true
  validates :duration, presence: true
  validates :apr, presence: true
  validates :color, presence: true

  def image_url
    Rails.application.routes.url_helpers.url_for(image) if image.attached?
end
end
