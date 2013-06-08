class AddFatherColumnToGoals < ActiveRecord::Migration
  def change
    add_column :goals,:father,:integer
  end
end
