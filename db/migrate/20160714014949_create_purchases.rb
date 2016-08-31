class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :number_of_shares
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
