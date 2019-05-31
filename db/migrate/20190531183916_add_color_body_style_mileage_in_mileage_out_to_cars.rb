class AddColorBodyStyleMileageInMileageOutToCars < ActiveRecord::Migration[5.2]
  def change
  	add_column :cars, :color, :string
  	add_column :cars, :bodystyle, :string
  	add_column :cars, :mileagein, :integer
  	add_column :cars, :mileageout, :integer
  end
end
