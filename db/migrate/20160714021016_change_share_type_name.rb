class ChangeShareTypeName < ActiveRecord::Migration
  def change
    remove_column :shares, :type
    add_column :shares, :share_type, :string
  end
end
