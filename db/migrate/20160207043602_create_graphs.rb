class CreateGraphs < ActiveRecord::Migration
  def change
    create_table :graphs do |t|
      t.string :title
      t.decimal :sales
      t.decimal :sales_goal

      t.timestamps null: false
    end
  end
end
