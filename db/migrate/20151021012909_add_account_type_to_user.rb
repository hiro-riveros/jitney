class AddAccountTypeToUser < ActiveRecord::Migration
  def change
  	add_column :users,	:account_type, :integer
  end
end
