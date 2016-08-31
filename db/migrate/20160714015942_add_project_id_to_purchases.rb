class AddProjectIdToPurchases < ActiveRecord::Migration
  def change
    add_column :purchases, :project_id, :integer
  end
end
