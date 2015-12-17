class CreateTableTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
        t.integer :user_id
    	t.string :client_token
    	t.integer :amount
    	t.integer :product_id
    	t.string :response_status
    	t.string :response_comment
    	t.string :bank_name
    	t.string :transaction_type
    end
  end
end
