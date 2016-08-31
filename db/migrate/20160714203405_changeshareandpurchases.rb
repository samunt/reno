class Changeshareandpurchases < ActiveRecord::Migration
  def change
    add_column :purchases, :share_id, :int
    remove_column :shares, :purchase_id
  end
end
