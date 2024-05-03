class RemoveImageFromCars < ActiveRecord::Migration[7.1]
  def change
    remove_column :cars, :image, :string
  end
end
