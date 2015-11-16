class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.integer :position_id
      t.json :frequent_destiny
      t.boolean :automatic_map

      t.timestamps null: false
    end
  end
end
