class ChangeTransactionIdName < ActiveRecord::Migration
  def change
    remove_column :shares, :transaction_id
    add_column :shares, :purchase_id, :integer
  end
end
