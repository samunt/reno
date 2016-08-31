class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.string :type
      t.integer :price
      t.belongs_to :project, index: true, foreign_key: true
      t.belongs_to :transaction, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
