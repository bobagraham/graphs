class AddUserIdToGraphs < ActiveRecord::Migration
  def change
    add_column :graphs, :user_id, :integer
    add_index :graphs, :user_id
  end
end
