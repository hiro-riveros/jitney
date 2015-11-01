class AddUserColumnsForProfile < ActiveRecord::Migration
  def change
  	add_column :users, :age, :integer
  	add_column :users, :last_name, :string
  	add_column :users, :slast_name, :string
  	add_column :users, :img_url, :string
  end
end
