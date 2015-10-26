class CreateUserHistories < ActiveRecord::Migration
  def change
    create_table :user_histories do |t|
      t.float :latitude
      t.float :longitude
      t.integer :order

      t.timestamps null: false
    end
  end
end
