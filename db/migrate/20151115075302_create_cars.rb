class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :jitney_id
      t.string :patent
      t.string :model
      t.string :route
      t.integer :passengers
      
      t.timestamps null: false
    end
  end
end
