class AddColumnUserIdToUserHistory < ActiveRecord::Migration
  def change
  	add_column :user_histories, :user_id, :integer
  end
end
