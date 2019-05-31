class CreateRepairs < ActiveRecord::Migration[5.2]
  def change
    create_table :repairs do |t|
      t.string :description
      t.integer :estime
      t.integer :total
      t.integer :tech_id
      t.integer :car_id

      t.timestamps
    end
  end
end
