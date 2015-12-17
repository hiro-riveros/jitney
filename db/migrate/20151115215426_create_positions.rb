class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
    	t.integer :user_id
      t.float :latitude
      t.float :longitude
      t.json :perimeter

      t.timestamps null: false
    end
  end
end
