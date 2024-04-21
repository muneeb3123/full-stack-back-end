class User < ApplicationRecord
  has_many :reservations, dependent: :destroy

  include Devise::JWT::RevocationStrategies::JTIMatcher

  validates :name, presence: true
  validates :email, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:jwt_authenticatable, jwt_revocation_strategy: self

         def  jwt_payload
          super
        end
end

