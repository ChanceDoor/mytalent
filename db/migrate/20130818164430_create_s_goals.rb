class CreateSGoals < ActiveRecord::Migration
  def change
    create_table :s_goals do |t|
      t.string :title
      t.string :description
      t.integer :days
      t.integer :degree

      t.timestamps
    end
  end
end
