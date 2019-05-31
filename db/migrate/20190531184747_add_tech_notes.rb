class AddTechNotes < ActiveRecord::Migration[5.2]
  def change
  	add_column :repairs, :technotes, :text
  end
end
