class RenameEstimeToEstimate < ActiveRecord::Migration[5.2]
  def change
  	rename_column :repairs, :estime, :estimate
  end
end
