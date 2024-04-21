class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :car

  attribute :city, :string
  attribute :date, :date

  validates :city, presence: true
  validates :date, presence: true
end
