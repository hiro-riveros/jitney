class AddColumnStatusToDocuments < ActiveRecord::Migration
  def change
  	add_column :documents, :status, :string
  	add_column :documents, :user_id, :integer
  end
end
