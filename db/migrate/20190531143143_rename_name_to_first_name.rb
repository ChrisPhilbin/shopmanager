class RenameNameToFirstName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :customers, :name, :firstname
  end
end
