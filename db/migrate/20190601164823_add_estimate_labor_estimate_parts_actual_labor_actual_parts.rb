class AddEstimateLaborEstimatePartsActualLaborActualParts < ActiveRecord::Migration[5.2]
  def change
  	add_column :repairs, :estimatelabor, :integer
  	add_column :repairs, :estimateparts, :integer
  	add_column :repairs, :actuallabor, :integer
  	add_column :repairs, :actualparts, :integer
  end
end
