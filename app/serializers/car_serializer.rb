class CarSerializer
  include JSONAPI::Serializer
  attributes :name, :color, :image_url, :apr, :description, :finance_fee, :option_to_purchase_fee, :total_amount_payable, :duration, :created_at, :updated_at
end
