class RenameDescriptionEstimateTotal < ActiveRecord::Migration[5.2]
  def change
  	rename_column :repairs, :description, :advisornotes
  	rename_column :repairs, :estimate, :totalestimate
  	rename_column :repairs, :total, :actualtotal
  end
end
