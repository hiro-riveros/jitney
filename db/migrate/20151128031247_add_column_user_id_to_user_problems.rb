class AddColumnUserIdToUserProblems < ActiveRecord::Migration
  def change
  	add_column :user_problems, :user_id, :integer
  end
end
