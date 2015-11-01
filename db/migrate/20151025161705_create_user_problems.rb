class CreateUserProblems < ActiveRecord::Migration
  def change
    create_table :user_problems do |t|
      t.integer :type
      t.string :problem
      t.string :phone

      t.timestamps null: false
    end
  end
end
